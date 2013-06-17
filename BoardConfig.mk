-include device/samsung/u8500-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/janice/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/janice/bluetooth
BOARD_USES_BLUETOOTH_HACK := true

# Graphics
BOARD_USES_CUSTOM_REFRESHRATE := false

# Camera
BOARD_USES_CAMERA_FIXES := true

# Audio
BOARD_HAS_MR0_STE_AUDIO := true
TARGET_USES_STE_AUDIO := true

# Kernel
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := "console=ttySAC2,115200 consoleblank=0"

# Filesystem
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 641728512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_LEGACY_NL80211_STA_EVENTS  := true
BOARD_HAVE_SAMSUNG_WIFI := true

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/janice/vibrator/vibrator.c

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/janice
TARGET_KERNEL_CONFIG := cyanogenmod_i9070_defconfig


# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

# RIL
BOARD_USES_COMMON_RIL := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/janice/recovery/recovery_keys.c
BOARD_USES_COMMON_RECOVERY_GRAPHICS := true
BOARD_USES_COMMON_RECOVERY := true
# Assert
TARGET_OTA_ASSERT_DEVICE := janice,i9070,GT-I9070

# Battery
BOARD_USES_COMMON_BATERY := true

# Inherit from the proprietary version
-include vendor/samsung/janice/BoardConfigVendor.mk
