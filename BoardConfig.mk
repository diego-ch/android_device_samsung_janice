USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := montblanc
TARGET_SOC := u8500
TARGET_BOOTLOADER_BOARD_NAME := montblanc

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/janice/rootdir/recovery.rc

TARGET_SPECIFIC_HEADER_PATH := device/samsung/janice/overlay/include

BOARD_KERNEL_CMDLINE := "console=ttySAC2,115200"
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_SOURCE := kernel/samsung/u8500
TARGET_KERNEL_CONFIG := cyanogenmod_i9070_defconfig

# Inherit from the proprietary version
-include vendor/samsung/janice/BoardConfigVendor.mk
