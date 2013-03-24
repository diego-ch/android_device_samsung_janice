LOCAL_PATH := device/samsung/janice

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is HDPI
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi


# Use non-open-source parts if present
$(call inherit-product-if-exists, vendor/samsung/janice/janice-vendor.mk)
