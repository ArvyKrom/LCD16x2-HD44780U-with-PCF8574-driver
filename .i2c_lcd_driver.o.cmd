savedcmd_i2c_lcd_driver.o := arm-unknown-linux-gnueabi-gcc -Wp,-MMD,./.i2c_lcd_driver.o.d -nostdinc -I/home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include -I/home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated -I/home/studentas/Documents/Projects/rpi_linux/linux-6.14/include -I/home/studentas/Documents/Projects/rpi_linux/linux-6.14/include -I/home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi -I/home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/uapi -I/home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi -I/home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/generated/uapi -include /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/compiler-version.h -include /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kconfig.h -include /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -D__LINUX_ARM_ARCH__=6 -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -fno-dwarf2-cfi-asm -mno-fdpic -fno-ipa-sra -mtp=cp15 -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -march=armv6k -mtune=arm1136j-s -msoft-float -Uarm -fno-delete-null-pointer-checks -Os -fno-allow-store-data-races -fstack-protector-strong -ftrivial-auto-var-init=zero -fno-stack-clash-protection -pg -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=1024 -Wno-main -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-stringop-overflow -Wno-array-bounds -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -fzero-init-padding-bits=all -Wextra -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -g -mstack-protector-guard=tls -mstack-protector-guard-offset=1128  -DMODULE  -DKBUILD_BASENAME='"i2c_lcd_driver"' -DKBUILD_MODNAME='"i2c_lcd_driver"' -D__KBUILD_MODNAME=kmod_i2c_lcd_driver -c -o i2c_lcd_driver.o i2c_lcd_driver.c  

source_i2c_lcd_driver.o := i2c_lcd_driver.c

deps_i2c_lcd_driver.o := \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/UBSAN_SIGNED_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/compiler_attributes.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/compiler-gcc.h \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
    $(wildcard include/config/ARCH_HAS_EXECMEM_ROX) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/container_of.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/build_bug.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
    $(wildcard include/config/64BIT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/asm/rwonce.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/rwonce.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/int-ll64.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/int-ll64.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitsperlong.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/bitsperlong.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/posix_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/stddef.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/stddef.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/posix_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/posix_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/const.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/const.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/const.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/CPU_32v6K) \
    $(wildcard include/config/THUMB2_KERNEL) \
    $(wildcard include/config/CPU_XSC3) \
    $(wildcard include/config/CPU_FA526) \
    $(wildcard include/config/ARM_HEAVY_MB) \
    $(wildcard include/config/ARM_DMA_MEM_BUFFERABLE) \
    $(wildcard include/config/CPU_SPECTRE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/barrier.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/stat.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/stat.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/stat.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/kernel.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/sysinfo.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/cache.h \
    $(wildcard include/config/ARM_L1_CACHE_SHIFT) \
    $(wildcard include/config/AEABI) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/math.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/compiler.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/div64.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bitops.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bits.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/bits.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/bits.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/typecheck.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/generic-non-atomic.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/bitops.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irqflags_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cleanup.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/CPU_V7M) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/ARM_THUMB) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/CPU_ENDIAN_BE8) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/hwcap.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/hwcap.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bitfield.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/byteorder.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/byteorder/little_endian.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/byteorder/little_endian.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/swab.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/swab.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/swab.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/swab.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/byteorder/generic.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/irqflags.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/percpu.h \
    $(wildcard include/config/CPU_V6) \
    $(wildcard include/config/ARM_HAS_GROUP_RELOCS) \
    $(wildcard include/config/ARM_MODULE_PLTS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/insn.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/non-atomic.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/builtin-__fls.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/builtin-__ffs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/builtin-fls.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/builtin-ffs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/ffz.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/fls64.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/sched.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/hweight.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/arch_hweight.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/const_hweight.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/lock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/atomic.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
    $(wildcard include/config/ARM_LPAE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/prefetch.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/processor.h \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/BINFMT_ELF_FDPIC) \
    $(wildcard include/config/MMU) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/hw_breakpoint.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/unified.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/vdso/processor.h \
    $(wildcard include/config/ARM_ERRATA_754327) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/CPU_SA1100) \
    $(wildcard include/config/CPU_SA110) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cmpxchg-emu.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/cmpxchg-local.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/atomic/atomic-arch-fallback.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/atomic/atomic-long.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/atomic/atomic-instrumented.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/instrumented.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/instrumented-lock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/le.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/math64.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/time64.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/time64.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/time.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/time_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/time32.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/timex.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/timex.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/param.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/uapi/asm/param.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/param.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/timex.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/time32.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/time.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/uidgid_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/highuid.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kmod.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/umh.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/gfp.h \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/SPARSEMEM) \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/spinlock.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/stringify.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/linkage.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/asm/preempt.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/preempt.h \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/SH) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/limits.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/limits.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/limits.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bug.h \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/CPU_ENDIAN_BE32) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/bug.h \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/once_lite.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/stdarg.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/init.h \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kern_levels.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/ratelimit_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/spinlock_types_raw.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/spinlock_types_up.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCK_STAT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/dynamic_debug.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/jump_label.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/restart_block.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/errno.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/errno.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/uapi/asm/errno.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/errno.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/errno-base.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/current.h \
    $(wildcard include/config/CURRENT_POINTER_IN_TPIDRURO) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/ARM_THUMBEE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/VFPv3) \
    $(wildcard include/config/IWMMXT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/page.h \
    $(wildcard include/config/CPU_COPY_V4WT) \
    $(wildcard include/config/CPU_COPY_V4WB) \
    $(wildcard include/config/CPU_COPY_FEROCEON) \
    $(wildcard include/config/CPU_COPY_FA) \
    $(wildcard include/config/CPU_XSCALE) \
    $(wildcard include/config/CPU_COPY_V6) \
    $(wildcard include/config/KUSER_HELPERS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/glue.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/pgtable-2level-types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/memory.h \
    $(wildcard include/config/NEED_MACH_MEMORY_H) \
    $(wildcard include/config/PAGE_OFFSET) \
    $(wildcard include/config/DRAM_BASE) \
    $(wildcard include/config/DRAM_SIZE) \
    $(wildcard include/config/XIP_KERNEL) \
    $(wildcard include/config/HAVE_TCM) \
    $(wildcard include/config/ARM_PATCH_PHYS_VIRT) \
    $(wildcard include/config/PHYS_OFFSET) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sizes.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/kasan_def.h \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/getorder.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/memory_model.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pfn.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/traps.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bottom_half.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/instruction_pointer.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/align.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/array_size.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/hex.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kstrtox.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/minmax.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sprintf.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/wordpart.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bitmap.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/find.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/args.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/err.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/overflow.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/string.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/string.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bitmap-str.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cpumask_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/smp_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/asm/mmiowb.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/spinlock_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rwlock_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/spinlock_up.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rwlock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/spinlock_api_up.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/list_nulls.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/wait.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/seqlock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mutex.h \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/osq_lock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/debug_locks.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/seqlock_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/nodemask.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/nodemask_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/random.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/ioctl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/uapi/asm/ioctl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/ioctl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/ioctl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irqnr.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/irqnr.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/page-flags-layout.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/generated/bounds.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mm_types_task.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/auxvec.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/auxvec.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/auxvec.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/auxvec.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kref.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/refcount.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/refcount_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rbtree.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rbtree_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rcupdate.h \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rcutiny.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/completion.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/swait.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/uprobes.h \
    $(wildcard include/config/UPROBES) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/ktime.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/jiffies.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/jiffies.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/generated/timeconst.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/ktime.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/clocksource_ids.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/timer_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/uprobes.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/probes.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/workqueue_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/percpu_counter.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/percpu.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/static_key.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/COMPAT) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/DEBUG_RSEQ) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/USER_EVENTS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/sched.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pid_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sem_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/shm.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/shmparam.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kmsan_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/plist_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/hrtimer_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/timerqueue_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/resource.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/resource.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/uapi/asm/resource.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/resource.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/resource.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/latencytop.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/prio.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/signal.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/signal.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/signal.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/signal-defs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/sigcontext.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/uapi/asm/siginfo.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/siginfo.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/syscall_user_dispatch_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/posix-timers_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/rseq.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kcsan.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/livepatch_sched.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/asm/kmap_size.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/CPU_HAS_ASID) \
    $(wildcard include/config/VDSO) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/local_lock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/local_lock_internal.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/notifier.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rcu_segcblist.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/srcutiny.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/topology.h \
    $(wildcard include/config/ARM_CPU_TOPOLOGY) \
    $(wildcard include/config/BL_SWITCHER) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/topology.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/sysctl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/elf.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/user.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/elf.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/elf-em.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sysfs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/idr.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/radix-tree.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/coredump.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kobject_ns.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rbtree_latch.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/error-injection.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/error-injection.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/tracepoint-defs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/module.h \
    $(wildcard include/config/ARM_UNWIND) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
    $(wildcard include/config/MODULES_USE_ELF_REL) \
    $(wildcard include/config/MODULES_USE_ELF_RELA) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/unwind.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/i2c.h \
    $(wildcard include/config/I2C) \
    $(wildcard include/config/I2C_SLAVE) \
    $(wildcard include/config/I2C_BOARDINFO) \
    $(wildcard include/config/I2C_MUX) \
    $(wildcard include/config/OF) \
    $(wildcard include/config/ACPI) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/acpi.h \
    $(wildcard include/config/ACPI_TABLE_LIB) \
    $(wildcard include/config/ACPI_DEBUGGER) \
    $(wildcard include/config/X86) \
    $(wildcard include/config/LOONGARCH) \
    $(wildcard include/config/RISCV) \
    $(wildcard include/config/ACPI_PROCESSOR_CSTATE) \
    $(wildcard include/config/ACPI_HOTPLUG_CPU) \
    $(wildcard include/config/ACPI_HOTPLUG_IOAPIC) \
    $(wildcard include/config/X86_IO_APIC) \
    $(wildcard include/config/PCI) \
    $(wildcard include/config/ACPI_WMI) \
    $(wildcard include/config/ACPI_THERMAL_LIB) \
    $(wildcard include/config/ACPI_HMAT) \
    $(wildcard include/config/ACPI_NUMA) \
    $(wildcard include/config/HIBERNATION) \
    $(wildcard include/config/PM_SLEEP) \
    $(wildcard include/config/ACPI_HOTPLUG_MEMORY) \
    $(wildcard include/config/ACPI_CONTAINER) \
    $(wildcard include/config/ACPI_GTDT) \
    $(wildcard include/config/SUSPEND) \
    $(wildcard include/config/PM) \
    $(wildcard include/config/ACPI_EC) \
    $(wildcard include/config/GPIOLIB) \
    $(wildcard include/config/ACPI_TABLE_UPGRADE) \
    $(wildcard include/config/ACPI_WATCHDOG) \
    $(wildcard include/config/ACPI_SPCR_TABLE) \
    $(wildcard include/config/ACPI_GENERIC_GSI) \
    $(wildcard include/config/ACPI_LPIT) \
    $(wildcard include/config/ACPI_PROCESSOR_IDLE) \
    $(wildcard include/config/ACPI_PPTT) \
    $(wildcard include/config/ACPI_PCC) \
    $(wildcard include/config/ACPI_FFH) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/ioport.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/resource_ext.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/SLAB_BUCKETS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/percpu-refcount.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kasan-enabled.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kasan-tags.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/device.h \
    $(wildcard include/config/HAS_IOMEM) \
    $(wildcard include/config/GENERIC_MSI_IRQ) \
    $(wildcard include/config/ENERGY_MODEL) \
    $(wildcard include/config/PINCTRL) \
    $(wildcard include/config/ARCH_HAS_DMA_OPS) \
    $(wildcard include/config/DMA_DECLARE_COHERENT) \
    $(wildcard include/config/DMA_CMA) \
    $(wildcard include/config/SWIOTLB) \
    $(wildcard include/config/SWIOTLB_DYNAMIC) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_DEVICE) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_CPU) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_CPU_ALL) \
    $(wildcard include/config/DMA_OPS_BYPASS) \
    $(wildcard include/config/DMA_NEED_SYNC) \
    $(wildcard include/config/IOMMU_DMA) \
    $(wildcard include/config/DEVTMPFS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/dev_printk.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/ratelimit.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/energy_model.h \
    $(wildcard include/config/SCHED_DEBUG) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/cpufreq.h \
    $(wildcard include/config/CPU_FREQ) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/topology.h \
    $(wildcard include/config/SCHED_CLUSTER) \
    $(wildcard include/config/SCHED_MC) \
    $(wildcard include/config/CPU_FREQ_GOV_SCHEDUTIL) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/idle.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/klist.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pm.h \
    $(wildcard include/config/VT_CONSOLE_SLEEP) \
    $(wildcard include/config/CXL_SUSPEND) \
    $(wildcard include/config/PM_CLK) \
    $(wildcard include/config/PM_GENERIC_DOMAINS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/hrtimer_defs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/timerqueue.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/device/bus.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/device/class.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/device/driver.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/device.h \
    $(wildcard include/config/ARM_DMA_USE_IOMMU) \
    $(wildcard include/config/ARCH_OMAP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pm_wakeup.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mod_devicetable.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/mei.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/mei_uuid.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/uuid.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/property.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/fwnode.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/node.h \
    $(wildcard include/config/HMEM_REPORTING) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acpi.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/platform/acenv.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/platform/acgcc.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/platform/aclinux.h \
    $(wildcard include/config/ACPI_REDUCED_HARDWARE_ONLY) \
    $(wildcard include/config/ACPI_DEBUG) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/ctype.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acnames.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/actypes.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acexcep.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/actbl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/actbl1.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/actbl2.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/actbl3.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acrestyp.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/platform/acenvex.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/platform/aclinuxex.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/platform/acgccex.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acoutput.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acpiosxf.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acpixf.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acconfig.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acbuffer.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/acpi/acpi_numa.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/regulator/consumer.h \
    $(wildcard include/config/REGULATOR) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/suspend.h \
    $(wildcard include/config/VT) \
    $(wildcard include/config/HIBERNATION_SNAPSHOT_DEV) \
    $(wildcard include/config/PM_SLEEP_DEBUG) \
    $(wildcard include/config/PM_AUTOSLEEP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/swap.h \
    $(wildcard include/config/DEVICE_PRIVATE) \
    $(wildcard include/config/MIGRATION) \
    $(wildcard include/config/THP_SWAP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/memcontrol.h \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cgroup.h \
    $(wildcard include/config/DEBUG_CGROUP_REF) \
    $(wildcard include/config/CGROUP_CPUACCT) \
    $(wildcard include/config/SOCK_CGROUP_DATA) \
    $(wildcard include/config/CGROUP_DATA) \
    $(wildcard include/config/CGROUP_BPF) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/cgroupstats.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/taskstats.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/fs.h \
    $(wildcard include/config/FANOTIFY_ACCESS_PERMISSIONS) \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/wait_bit.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kdev_t.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/kdev_t.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/dcache.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rculist_bl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/list_bl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bit_spinlock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/path.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/list_lru.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/shrinker.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pid.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/capability.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/capability.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/semaphore.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/fcntl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/uapi/asm/fcntl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/asm-generic/fcntl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/openat2.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/migrate_mode.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/percpu-rwsem.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rcuwait.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
    $(wildcard include/config/STACK_GROWSUP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
    $(wildcard include/config/PROC_FS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/jobctl.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/nospec.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/uaccess.h \
    $(wildcard include/config/CPU_SW_DOMAIN_PAN) \
    $(wildcard include/config/CPU_TTBR0_PAN) \
    $(wildcard include/config/HAVE_EFFICIENT_UNALIGNED_ACCESS) \
    $(wildcard include/config/UACCESS_WITH_MEMCPY) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/domain.h \
    $(wildcard include/config/IO_36) \
    $(wildcard include/config/CPU_USE_DOMAINS) \
    $(wildcard include/config/CPU_CP15_MMU) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/unaligned.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/unaligned/packed_struct.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/vdso/unaligned.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/pgtable.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/proc-fns.h \
    $(wildcard include/config/BIG_LITTLE) \
    $(wildcard include/config/HARDEN_BRANCH_PREDICTOR) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/CPU_ARM7TDMI) \
    $(wildcard include/config/CPU_ARM720T) \
    $(wildcard include/config/CPU_ARM740T) \
    $(wildcard include/config/CPU_ARM9TDMI) \
    $(wildcard include/config/CPU_ARM920T) \
    $(wildcard include/config/CPU_ARM922T) \
    $(wildcard include/config/CPU_ARM925T) \
    $(wildcard include/config/CPU_ARM926T) \
    $(wildcard include/config/CPU_ARM940T) \
    $(wildcard include/config/CPU_ARM946E) \
    $(wildcard include/config/CPU_ARM1020) \
    $(wildcard include/config/CPU_ARM1020E) \
    $(wildcard include/config/CPU_ARM1022) \
    $(wildcard include/config/CPU_ARM1026) \
    $(wildcard include/config/CPU_MOHAWK) \
    $(wildcard include/config/CPU_FEROCEON) \
    $(wildcard include/config/CPU_V6K) \
    $(wildcard include/config/CPU_PJ4B) \
    $(wildcard include/config/CPU_V7) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/pgtable-nopud.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/pgtable-nop4d.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/pgtable-hwdef.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/SMP_ON_UP) \
    $(wildcard include/config/CPU_TLB_V4WT) \
    $(wildcard include/config/CPU_TLB_FA) \
    $(wildcard include/config/CPU_TLB_V4WBI) \
    $(wildcard include/config/CPU_TLB_FEROCEON) \
    $(wildcard include/config/CPU_TLB_V4WB) \
    $(wildcard include/config/CPU_TLB_V6) \
    $(wildcard include/config/CPU_TLB_V7) \
    $(wildcard include/config/ARM_ERRATA_720789) \
    $(wildcard include/config/ARM_ERRATA_798181) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/pgtable-2level.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/asm/extable.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/extable.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cred.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/WATCH_QUEUE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/posix-timers.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rcuref.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rcu_sync.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/delayed_call.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/errseq.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/ioprio.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/sched/rt.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/ioprio.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/fs_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mount.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mnt_idmapping.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rw_hint.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/file_ref.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/unicode.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/fs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/dqblk_xfs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/dqblk_v1.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/dqblk_v2.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/dqblk_qtree.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/projid.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/quota.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/seq_file.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/string_helpers.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/string_choices.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/ns_common.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/nsproxy.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/user_namespace.h \
    $(wildcard include/config/INOTIFY_USER) \
    $(wildcard include/config/FANOTIFY) \
    $(wildcard include/config/BINFMT_MISC) \
    $(wildcard include/config/PERSISTENT_KEYRINGS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kernel_stat.h \
    $(wildcard include/config/GENERIC_IRQ_STAT_SNAPSHOT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/interrupt.h \
    $(wildcard include/config/IRQ_FORCED_THREADING) \
    $(wildcard include/config/GENERIC_IRQ_PROBE) \
    $(wildcard include/config/IRQ_TIMINGS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irqreturn.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/hardirq.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/context_tracking_state.h \
    $(wildcard include/config/CONTEXT_TRACKING_USER) \
    $(wildcard include/config/CONTEXT_TRACKING) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/ftrace_irq.h \
    $(wildcard include/config/HWLAT_TRACER) \
    $(wildcard include/config/OSNOISE_TRACER) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/vtime.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING) \
    $(wildcard include/config/IRQ_TIME_ACCOUNTING) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/hardirq.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/irq.h \
    $(wildcard include/config/SPARSE_IRQ) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/hardirq.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irq.h \
    $(wildcard include/config/GENERIC_IRQ_EFFECTIVE_AFF_MASK) \
    $(wildcard include/config/GENERIC_IRQ_IPI) \
    $(wildcard include/config/IRQ_DOMAIN_HIERARCHY) \
    $(wildcard include/config/DEPRECATED_IRQ_CPU_ONOFFLINE) \
    $(wildcard include/config/GENERIC_IRQ_MIGRATION) \
    $(wildcard include/config/GENERIC_PENDING_IRQ) \
    $(wildcard include/config/HARDIRQS_SW_RESEND) \
    $(wildcard include/config/GENERIC_IRQ_LEGACY) \
    $(wildcard include/config/GENERIC_IRQ_CHIP) \
    $(wildcard include/config/GENERIC_IRQ_MULTI_HANDLER) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irqhandler.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/io.h \
    $(wildcard include/config/HAS_IOPORT_MAP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/io.h \
    $(wildcard include/config/PCMCIA) \
    $(wildcard include/config/NEED_MACH_IO_H) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/NO_GENERIC_PCI_IOPORT_MAP) \
    $(wildcard include/config/GENERIC_PCI_IOMAP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/io.h \
    $(wildcard include/config/GENERIC_IOMAP) \
    $(wildcard include/config/TRACE_MMIO_ACCESS) \
    $(wildcard include/config/HAS_IOPORT) \
    $(wildcard include/config/GENERIC_IOREMAP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/logic_pio.h \
    $(wildcard include/config/INDIRECT_PIO) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/generated/asm/irq_regs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/irq_regs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irqdesc.h \
    $(wildcard include/config/GENERIC_IRQ_DEBUGFS) \
    $(wildcard include/config/IRQ_DOMAIN) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/hw_irq.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/sections.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/sections.h \
    $(wildcard include/config/HAVE_FUNCTION_DESCRIPTORS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cgroup-defs.h \
    $(wildcard include/config/CGROUP_NET_CLASSID) \
    $(wildcard include/config/CGROUP_NET_PRIO) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/u64_stats_sync.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bpf-cgroup-defs.h \
    $(wildcard include/config/BPF_LSM) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/psi_types.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kthread.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cgroup_subsys.h \
    $(wildcard include/config/CGROUP_DEVICE) \
    $(wildcard include/config/CGROUP_FREEZER) \
    $(wildcard include/config/CGROUP_PERF) \
    $(wildcard include/config/CGROUP_HUGETLB) \
    $(wildcard include/config/CGROUP_PIDS) \
    $(wildcard include/config/CGROUP_RDMA) \
    $(wildcard include/config/CGROUP_MISC) \
    $(wildcard include/config/CGROUP_DMEM) \
    $(wildcard include/config/CGROUP_DEBUG) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cgroup_refcnt.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/vm_event_item.h \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/MEMORY_BALLOON) \
    $(wildcard include/config/BALLOON_COMPACTION) \
    $(wildcard include/config/DEBUG_TLBFLUSH) \
    $(wildcard include/config/PER_VMA_LOCK_STATS) \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/page_counter.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/vmpressure.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/eventfd.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/eventfd.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mm.h \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_BITS) \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_COMPAT_BITS) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_USES_HIGH_VMA_FLAGS) \
    $(wildcard include/config/ARCH_HAS_PKEYS) \
    $(wildcard include/config/ARCH_PKEY_BITS) \
    $(wildcard include/config/X86_USER_SHADOW_STACK) \
    $(wildcard include/config/ARM64_GCS) \
    $(wildcard include/config/PARISC) \
    $(wildcard include/config/SPARC64) \
    $(wildcard include/config/ARM64_MTE) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_MINOR) \
    $(wildcard include/config/PPC32) \
    $(wildcard include/config/SHMEM) \
    $(wildcard include/config/ARCH_HAS_GIGANTIC_PAGE) \
    $(wildcard include/config/ARCH_HAS_PTE_SPECIAL) \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/SPLIT_PTE_PTLOCKS) \
    $(wildcard include/config/HIGHPTE) \
    $(wildcard include/config/DEBUG_VM_RB) \
    $(wildcard include/config/PAGE_POISONING) \
    $(wildcard include/config/INIT_ON_ALLOC_DEFAULT_ON) \
    $(wildcard include/config/INIT_ON_FREE_DEFAULT_ON) \
    $(wildcard include/config/DEBUG_PAGEALLOC) \
    $(wildcard include/config/ARCH_WANT_OPTIMIZE_DAX_VMEMMAP) \
    $(wildcard include/config/HUGETLBFS) \
    $(wildcard include/config/MAPPING_DIRTY_HELPERS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pgalloc_tag.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/mmap_lock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/range.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/page_ext.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/stacktrace.h \
    $(wildcard include/config/ARCH_STACKWALK) \
    $(wildcard include/config/STACKTRACE) \
    $(wildcard include/config/HAVE_RELIABLE_STACKTRACE) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/page_ref.h \
    $(wildcard include/config/DEBUG_PAGE_REF) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pgtable.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/ARCH_HAS_NONLEAF_PMD_YOUNG) \
    $(wildcard include/config/ARCH_HAS_HW_PTE_YOUNG) \
    $(wildcard include/config/GUP_GET_PXX_LOW_HIGH) \
    $(wildcard include/config/ARCH_WANT_PMD_MKWRITE) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMAP) \
    $(wildcard include/config/X86_ESPFIX64) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/asm-generic/pgtable_uffd.h \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/page_table_check.h \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/memremap.h \
    $(wildcard include/config/PCI_P2PDMA) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cacheinfo.h \
    $(wildcard include/config/ARM) \
    $(wildcard include/config/ARCH_HAS_CPU_CACHE_ALIASING) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cpuhplock.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/cachetype.h \
    $(wildcard include/config/CPU_CACHE_VIVT) \
    $(wildcard include/config/CPU_CACHE_VIPT) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/huge_mm.h \
    $(wildcard include/config/PGTABLE_HAS_HUGE_LEAVES) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/vmstat.h \
    $(wildcard include/config/VM_EVENT_COUNTERS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/writeback.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/flex_proportions.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/backing-dev-defs.h \
    $(wildcard include/config/DEBUG_FS) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/blk_types.h \
    $(wildcard include/config/FAIL_MAKE_REQUEST) \
    $(wildcard include/config/BLK_CGROUP_IOCOST) \
    $(wildcard include/config/BLK_INLINE_ENCRYPTION) \
    $(wildcard include/config/BLK_DEV_INTEGRITY) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/bvec.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/highmem.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cacheflush.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/cacheflush.h \
    $(wildcard include/config/ARM_ERRATA_411920) \
    $(wildcard include/config/OUTER_CACHE) \
    $(wildcard include/config/CPU_ICACHE_MISMATCH_WORKAROUND) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/glue-cache.h \
    $(wildcard include/config/CPU_CACHE_V4) \
    $(wildcard include/config/CPU_CACHE_V4WB) \
    $(wildcard include/config/CACHE_B15_RAC) \
    $(wildcard include/config/CPU_CACHE_NOP) \
    $(wildcard include/config/CPU_CACHE_V7) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/OUTER_CACHE_SYNC) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/kmsan.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/dma-direction.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/highmem-internal.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pagevec.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/pagemap.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/hugetlb_inline.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/mempolicy.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/freezer.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/regulator/regulator.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/rtmutex.h \
    $(wildcard include/config/DEBUG_RT_MUTEXES) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irqdomain.h \
    $(wildcard include/config/IRQ_DOMAIN_NOMAP) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/irqdomain_defs.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/of.h \
    $(wildcard include/config/OF_DYNAMIC) \
    $(wildcard include/config/SPARC) \
    $(wildcard include/config/OF_PROMTREE) \
    $(wildcard include/config/OF_KOBJ) \
    $(wildcard include/config/OF_NUMA) \
    $(wildcard include/config/OF_OVERLAY) \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/uapi/linux/i2c.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/cdev.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/include/linux/delay.h \
  /home/studentas/Documents/Projects/rpi_linux/linux-6.14/arch/arm/include/asm/delay.h \

i2c_lcd_driver.o: $(deps_i2c_lcd_driver.o)

$(deps_i2c_lcd_driver.o):
