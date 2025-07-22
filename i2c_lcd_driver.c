#include <linux/module.h>       // Required for all kernel modules
#include <linux/init.h>         // Required for module_init and module_exit macros
#include <linux/i2c.h>          // Required for I2C functions and structures
#include <linux/cdev.h>
#include <linux/kernel.h>       // Required for KERN_INFO, pr_info
#include <linux/slab.h>         // Required for kmalloc/kfree
#include <linux/delay.h>

/*  Module Metadata  */

MODULE_AUTHOR("Arvydas");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("A simple LCD i2c driver.");
MODULE_VERSION("0.1");

/*  Defines  */

#define DRIVER_NAME "lcd1602_i2c_driver"
#define DEVICE_NAME "lcd1602"
#define WRITE_BUF_LENGTH 34
#define I2C_LCD_BACKPACK_ADDR 0x27
#define LCD_NUMBER_OF_LINES 2
#define LCD_NUMBER_OF_SYMBOLS_PER_LINE 16

/*  Static Global Variables  */

static DEFINE_MUTEX(lcd1602_mutex);
static struct class *cls; 

/*  Struct to keep the i2c dev handling struct*/

struct i2c_dev_data {
    struct i2c_client *client;
    struct cdev cdev;
    dev_t devt;
};


/*  Function Prototypes  */
static int device_open(struct inode *, struct file *); 
static int device_release(struct inode *, struct file *); 

/*
 * Accepts a string up to 32 characters
 */
static ssize_t device_write(struct file *, const char __user *, size_t, loff_t *); 

static int lcd1602_i2c_probe(struct i2c_client *client);
static void lcd1602_i2c_remove(struct i2c_client *client);

static int gpio_expander_write_byte( struct i2c_client *client, u8 byte);
static int get_busy_flag (struct i2c_client *client, int *busy_flag);
static int lcd_write_4bit_command(struct i2c_client *client, u8 command);
static int lcd_write_half_of_4bit_command(struct i2c_client *client, u8 command);
static int lcd_init(struct i2c_client *client);
static int lcd_set_cursor(struct i2c_client *client, int pos);
static int lcd_print_char(struct i2c_client *client, u8 symbol);
static int lcd_clear(struct i2c_client *client);

/*  System Calls mapping  */

static struct file_operations lcd1602_driver_fops = { 
    .write = device_write, 
    .open = device_open, 
    .release = device_release, 
}; 

/*  Device Matching Property  */

static struct of_device_id lcd1602_of_match[] = {
    {.compatible = "lcd1602"},
    {},
};

MODULE_DEVICE_TABLE(of, lcd1602_of_match);

/*  I2C Driver Definition  */

static struct i2c_driver lcd1602_i2c_driver = {
    .driver = {
        .name = DRIVER_NAME,
        .owner = THIS_MODULE,
        .of_match_table = lcd1602_of_match
    },
    .probe = lcd1602_i2c_probe,
    .remove = lcd1602_i2c_remove,
};

/*  I2C Driver Initialization and Deinitialization  */

module_i2c_driver(lcd1602_i2c_driver);

/*  Probe function  */
/*  Creates a char device  */

static int lcd1602_i2c_probe(struct i2c_client *client){
    pr_info("%s: Device probed\n",DRIVER_NAME);
    struct i2c_dev_data *dev_data;

    dev_data = devm_kzalloc(&client->dev, sizeof(*dev_data), GFP_KERNEL);
    if (dev_data == NULL)
        return -ENOMEM;
    
    dev_data->client = client;

    int ret =  alloc_chrdev_region(&dev_data->devt, 0, 1, DRIVER_NAME);
    if (ret < 0) { 
        pr_alert("%s: Allocating char dev region for %s failed with %d\n", DRIVER_NAME, DEVICE_NAME, ret); 
        return ret; 
    } 

    cdev_init(&dev_data->cdev, &lcd1602_driver_fops);


    dev_data->cdev.owner = THIS_MODULE;

    ret = cdev_add(&dev_data->cdev, dev_data->devt, 1);
    if(ret<0){
        unregister_chrdev_region(dev_data->devt, 1);
        return ret;
    }

    cls = class_create(DEVICE_NAME);


    if(IS_ERR(device_create(cls, &client->dev, dev_data->devt,dev_data,
        "%s_%d", DEVICE_NAME, client->addr))){
        cdev_del(&dev_data->cdev);
        unregister_chrdev_region(dev_data->devt, 1);
        class_destroy(cls);
        cls = NULL;
        pr_alert("%s: Failed to create the device %s.\n", DRIVER_NAME, DEVICE_NAME);
        return -ENODEV;
    }

    i2c_set_clientdata(client, dev_data);
    
    pr_info("%s: Device created on /dev/%s.\n", DRIVER_NAME, DEVICE_NAME);

    ret = lcd_init(client);
    if(ret != 0)
        return ret;
        
    return 0;
}

/*  Remove function  */
/*  Cleans up  */

static void lcd1602_i2c_remove(struct i2c_client *client){
    struct i2c_dev_data *dev_data;
    dev_data = i2c_get_clientdata(client);
    if (!dev_data)
        return;
    device_destroy(cls, dev_data->devt);
    cdev_del(&dev_data->cdev);
    unregister_chrdev_region(dev_data->devt, 1);  
    if(cls){
        class_destroy(cls);
        cls = NULL;
    }

    pr_info("%s: Removed\n",DRIVER_NAME);
} 

/*  System Calls  */ 

static int device_open(struct inode *inode, struct file *file) 
{ 
    struct i2c_dev_data *dev_data;
    dev_data = container_of(inode->i_cdev,struct i2c_dev_data, cdev);

    if (!dev_data || !dev_data->client)
        return -ENODEV;

    file->private_data = dev_data;

    try_module_get(THIS_MODULE); 
    mutex_lock(&lcd1602_mutex);
    return 0; 
} 

static int device_release(struct inode *inode, struct file *file) 
{ 
    module_put(THIS_MODULE); 
    mutex_unlock(&lcd1602_mutex);
    return 0; 
} 

static ssize_t device_write(struct file *filp, const char __user *buff, 
                            size_t len, loff_t *off) 
{ 
    static struct i2c_dev_data *dev_data;
    dev_data = filp->private_data;
    if (dev_data == NULL){
        pr_err("%s: Failed to get %s private data\n", DRIVER_NAME, DEVICE_NAME);
        return -ENODEV;
    }

    static char msg [WRITE_BUF_LENGTH];
    if (len + *off> WRITE_BUF_LENGTH - 1){
         pr_alert("%s: Message to %s too long. Max %d characters.\n", DRIVER_NAME, DEVICE_NAME, WRITE_BUF_LENGTH-2);
         return -EMSGSIZE;
    }

    if(copy_from_user(msg + (*off), buff, len) != 0){
        pr_alert("%s: Failed to write to %s.\n", DRIVER_NAME, DEVICE_NAME);
        return -EFAULT;
    }

    *off += len;

    if(strchr(msg,(int)'\n') == NULL){
        return len;
    }
    
    int ret = lcd_clear(dev_data->client);
    if(ret != 0)
        return -EFAULT;

    ret = lcd_set_cursor(dev_data->client,0);
    if(ret != 0)
        return -EFAULT;

    // Past this point full message was read
    for(int i=0;i<*off;i++){
        if (msg[i] == '\n'){
            break;
        }
        if(i == LCD_NUMBER_OF_SYMBOLS_PER_LINE){
            ret = lcd_set_cursor(dev_data->client,16);
            if(ret != 0)
                return -EFAULT;
        }
        ret = lcd_print_char(dev_data->client,msg[i]);
        if(ret != 0)
            return -EFAULT;
    }

    *off = 0;
    memset(msg, 0, WRITE_BUF_LENGTH);
    return len;
} 

static int gpio_expander_write_byte( struct i2c_client *client, u8 byte){

    int ret = i2c_smbus_write_byte(client, byte);
    if (ret != 0){
        pr_alert("%s: Failed to write to %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, ret);
        return ret;
    }
    //pr_info("%s: Writen to %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, byte);
    return 0;
}

static int get_busy_flag (struct i2c_client *client, int *busy_flag){
    // To use an expanded GPIO of PCF8574 as input one needs to pull (weak) the pin high
    // and check if it's pulled down (strong)

    // Seems like when we're reading we use enable not to write a command to start reading
    // but rather to flip to the next data, that is after hitting e, we're provided with
    // next set of 4 bit data

    //Pull up with Enable high
    int ret;
    ret = i2c_smbus_write_byte(client, 0xFE);
    if (ret != 0){
        pr_alert("%s: Failed to write to %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, ret);
        return ret;
    }

    // Read this first 4 bits (MSB side)

    s32 read_data;
    u8 high_side = 0;
    u8 low_side = 0;

    read_data = i2c_smbus_read_byte(client);
    if (read_data < 0){
        pr_alert("%s: Failed to read from %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, read_data);
        return ret;
    }    
    high_side = (u8) read_data;

    // Toggle the enable to flip the data
    ret = i2c_smbus_write_byte(client, 0xFA);
    if (ret != 0){
        pr_alert("%s: Failed to write to %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, ret);
        return ret;
    }

    ret = i2c_smbus_write_byte(client, 0xFE);
    if (ret != 0){
        pr_alert("%s: Failed to write to %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, ret);
        return ret;
    }

    // Read this last 4 bits (LSB side)

    read_data = i2c_smbus_read_byte(client);
    if (read_data < 0){
        pr_alert("%s: Failed to read from %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, read_data);
        return ret;
    }    
    low_side = (u8) read_data;

    // Connect the data

    u8 full_data_byte = 0;
    full_data_byte = (high_side << 4) | low_side;
    pr_info("%s: Read from %s and received: %d\n", DRIVER_NAME, DEVICE_NAME, full_data_byte);
    
    *busy_flag = full_data_byte & 0x80;

    //Toggle to finish the reading operation
    // ret = i2c_smbus_write_byte(client, 0xFA);
    // if (ret != 0){
    //     pr_alert("%s: Failed to write to %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, ret);
    //     return ret;
    // }

    // ret = i2c_smbus_write_byte(client, 0xFE);
    // if (ret != 0){
    //     pr_alert("%s: Failed to write to %s over I2C: %d\n", DRIVER_NAME, DEVICE_NAME, ret);
    //     return ret;
    // }

    return 0;
}



static int lcd_write_4bit_command(struct i2c_client *client, u8 command){
    int busy_flag = 1;
    while(busy_flag){
        if(get_busy_flag(client, &busy_flag)!=0){
            pr_alert("%s: Failed to get busy flag from %s.\n", DRIVER_NAME, DEVICE_NAME);
            return -ENODEV;
        }
        if(busy_flag)
            msleep(10);
    }
    
    // First 4 DATA, 0xC for keeping the backlight and turning E high, then last two bits are R/W and RS
    u8 gpio_sequence = (command & 0xF0) | 0xC | 0x0;
    int ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;
    gpio_sequence = gpio_sequence ^(0x4);
    
    ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;

    // Then we Do the same but for the other 4 bits of the command
    gpio_sequence = ((command & 0x0F)<<4) | 0xC | 0x0;
    ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;
    gpio_sequence = gpio_sequence ^(0x4);
    
    ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;
    
    return 0;
}

static int lcd_write_4bit_data(struct i2c_client *client, u8 command){
    // First 4 DATA, 0xC for keeping the backlight and turning E high, then last two bits are R/W and RS
    u8 gpio_sequence = (command & 0xF0) | 0xC | 0x1;
    int ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;
    gpio_sequence = gpio_sequence ^(0x4);
    
    ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;

    // Then we Do the same but for the other 4 bits of the command
    gpio_sequence = ((command & 0x0F)<<4) | 0xC | 0x1;
    ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;
    gpio_sequence = gpio_sequence ^(0x4);
    
    ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;
    
    return 0;
}

// Used only for the first command that even though is 4 bit is treated like 8 bit

static int lcd_write_half_of_4bit_command(struct i2c_client *client, u8 command){
    u8 gpio_sequence = (command & 0xF0) | 0xC | 0x0;
    int ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;
    gpio_sequence = gpio_sequence ^(0x4);
    
    ret = gpio_expander_write_byte(client, gpio_sequence);
    if(ret != 0)
        return ret;

    return 0;
}

static int lcd_init(struct i2c_client *client){
    int ret = lcd_write_half_of_4bit_command(client,0x20); // Set the 4 bit data trasnfer mode
    if(ret != 0)
        return ret;
    
    ret = lcd_write_4bit_command(client, 0x28); // Set the number of lines to two
    if(ret != 0)
        return ret;

    ret = lcd_write_4bit_command(client, 0x0F); // Make the cursor blink and turn the display on
    if(ret != 0)
        return ret;

    ret = lcd_clear(client);
    if(ret != 0)
        return ret;

    ret = lcd_set_cursor(client, 0);
    if(ret != 0)
        return ret;
    
    return 0;
}

static int lcd_set_cursor(struct i2c_client *client, int pos){

    if (pos < 0 || pos > LCD_NUMBER_OF_LINES*LCD_NUMBER_OF_SYMBOLS_PER_LINE - 1)
        return -EINVAL;
    if (pos > LCD_NUMBER_OF_SYMBOLS_PER_LINE-1){
        pos = pos - LCD_NUMBER_OF_SYMBOLS_PER_LINE + 0x40;
    }
    pos = pos | 0x80; //formating pos data as a sed ddram address command
    int ret = lcd_write_4bit_command(client,pos); 
    return ret;
}

static int lcd_print_char(struct i2c_client *client, u8 symbol){
    return lcd_write_4bit_data(client,symbol);
}

static int lcd_clear(struct i2c_client *client){
    pr_info("%s: Clearing %s.\n", DRIVER_NAME, DEVICE_NAME);
    return lcd_write_4bit_command(client,0x01);
}
