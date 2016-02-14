# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 960x640

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from proprietary blobs
# MUST be before device.mk cause this will pull in
# common vendor there and we want to overwrite files from there
$(call inherit-product, vendor/lge/g2m/g2m-vendor.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/g2m/device_g2m.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := LG G2 Mini
PRODUCT_NAME := omni_g2m
PRODUCT_MODEL := g2m
PRODUCT_DEVICE := g2m
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
