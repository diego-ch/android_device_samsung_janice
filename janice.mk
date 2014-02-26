# Include common makefile
$(call inherit-product, device/samsung/u8500-common/common.mk)

LOCAL_PATH := device/samsung/janice

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is HDPI
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# STE
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ste_modem.sh:system/etc/ste_modem.sh

# TEE
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/tee/cops_ta.ssw:system/lib/tee/cops_ta.ssw \
    $(LOCAL_PATH)/tee/custom_ta.ssw:system/lib/tee/custom_ta.ssw \
    $(LOCAL_PATH)/tee/libbassapp_ssw:system/lib/tee/libbassapp_ssw \
    $(LOCAL_PATH)/tee/smcl_ta_8500bx_secure.ssw:system/lib/tee/smcl_ta_8500bx_secure.ssw 

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.telephony.ril_class=SamsungU8500RIL \
    ro.telephony.sends_barcount=1

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

PRODUCT_TAGS += dalvik.gc.type-precise

# Packages
PRODUCT_PACKAGES += \
    GalaxySAdvanceSettings \
    CMAccount \
    Stk \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Gps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf
    
# Compass workaround
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/compass:system/etc/init.d/compass

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.samsungjanice:root/fstab.samsungjanice \
    $(LOCAL_PATH)/rootdir/init.samsungjanice.rc:root/init.samsungjanice.rc \
    $(LOCAL_PATH)/rootdir/init.samsungjanice.usb.rc:root/init.samsungjanice.usb.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.samsungjanice.rc:root/init.recovery.samsungjanice.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsungjanice.rc:root/ueventd.samsungjanice.rc
    
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/adm.sqlite-u8500:system/etc/adm.sqlite-u8500 \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# RIL
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/manuf_id.cfg:system/etc/AT/manuf_id.cfg \
   $(LOCAL_PATH)/configs/model_id.cfg:system/etc/AT/model_id.cfg \
   $(LOCAL_PATH)/configs/system_id.cfg:system/etc/AT/system_id.cfg

# Use non-open-source parts if present
$(call inherit-product-if-exists, vendor/samsung/u8500-common/janice/janice-vendor-blobs.mk)
