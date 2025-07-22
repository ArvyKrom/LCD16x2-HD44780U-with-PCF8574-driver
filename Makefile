ARCH ?= arm
CROSS_COMPILE ?= arm-unknown-linux-gnueabi-
KERNEL_SRC ?= /home/studentas/Documents/Projects/rpi_linux/linux-6.14

obj-m+= i2c_lcd_driver.o

all:
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) \
	-C $(KERNEL_SRC) M=$(PWD) modules
clean:
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) \
	-C $(KERNEL_SRC) M=$(PWD) M=$(PWD) clean