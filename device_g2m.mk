#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Include common makefile
$(call inherit-product, device/lge/msm8226-common/msm8226.mk)

$(call inherit-product, frameworks/native-caf/build/phone-hdpi-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/g2m/overlay

# Configs
PRODUCT_COPY_FILES += \
    device/lge/g2m/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/g2m/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/g2m/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
    device/lge/g2m/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

# OTA
PRODUCT_COPY_FILES += \
    device/lge/g2m/prebuilt/fixup.sh:fixup.sh

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp/vendor/firmware/cmnlib.b00:recovery/root/vendor/firmware/cmnlib.b00 \
    $(LOCAL_PATH)/twrp/vendor/firmware/cmnlib.b01:recovery/root/vendor/firmware/cmnlib.b01 \
    $(LOCAL_PATH)/twrp/vendor/firmware/cmnlib.b02:recovery/root/vendor/firmware/cmnlib.b02 \
    $(LOCAL_PATH)/twrp/vendor/firmware/cmnlib.b03:recovery/root/vendor/firmware/cmnlib.b03 \
    $(LOCAL_PATH)/twrp/vendor/firmware/cmnlib.mdt:recovery/root/vendor/firmware/cmnlib.mdt \
    $(LOCAL_PATH)/twrp/vendor/firmware/keymaster/keymaster.b00:recovery/root/vendor/firmware/keymaster/keymaster.b00 \
    $(LOCAL_PATH)/twrp/vendor/firmware/keymaster/keymaster.b01:recovery/root/vendor/firmware/keymaster/keymaster.b01 \
    $(LOCAL_PATH)/twrp/vendor/firmware/keymaster/keymaster.b02:recovery/root/vendor/firmware/keymaster/keymaster.b02 \
    $(LOCAL_PATH)/twrp/vendor/firmware/keymaster/keymaster.b03:recovery/root/vendor/firmware/keymaster/keymaster.b03 \
    $(LOCAL_PATH)/twrp/vendor/firmware/keymaster/keymaster.mdt:recovery/root/vendor/firmware/keymaster/keymaster.mdt \
    $(LOCAL_PATH)/twrp/vendor/lib/hw/keystore.msm8226.so:recovery/root/vendor/lib/hw/keystore.msm8226.so \
    $(LOCAL_PATH)/twrp/vendor/lib/libQSEEComAPI.so:recovery/root/vendor/lib/libQSEEComAPI.so

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Common specific options
BOARD_HAS_QCOM_WCNSS := true
BOARD_HAS_NFC := true

