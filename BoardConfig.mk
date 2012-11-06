# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := false #MSO - 20121105 - Build from sources
BOARD_USES_SAMSUNG_SEPARATED_STREAM := true #MSO - 20121105 - Samsung Specific code for audio libs and mediaserver
#BOARD_USE_YAMAHAPLAYER := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
BOARD_USES_LIBSECRIL_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/samsung/janice/BoardConfigVendor.mk

# Platform
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_BOARD_PLATFORM := ux500
TARGET_BOOTLOADER_BOARD_NAME := GT-I9070

# Kernel
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0
TARGET_PREBUILT_KERNEL := device/samsung/janice/kernel

# Misc
#TARGET_PROVIDES_MEDIASERVER := true
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/u8500-common/shbootimg.mk

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/u8500-common/releasetools/u8500_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/u8500-common/releasetools/u8500_img_from_target_files

# Camera
USE_CAMERA_STUB := true
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif

# assert
TARGET_OTA_ASSERT_DEVICE := janice,GT-I9070

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_FORCE_STATIC_A2DP := true

# gps
BOARD_USES_GPSWRAPPER := true

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := si4709

# Vibrator
#BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/u8500-common/vibrator/tspdrv.c

# Connectivity - Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

# janice uses bcm4330
BOARD_WLAN_DEVICE := bcm4330
WIFI_DRIVER_MODULE_PATH     := "/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/vendor/firmware/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/vendor/firmware/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/system/vendor/firmware/bcm4330_sta.bin nvram_path=/system/etc/nvram_net.txt"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 641728512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/janice/recovery/recovery_ui.c
TARGET_RECOVERY_INITRC := device/samsung/u8500-common/recovery.rc
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/janice/recovery.fstab

# Include aries specific stuff
-include device/samsung/u8500-common/Android.mk
