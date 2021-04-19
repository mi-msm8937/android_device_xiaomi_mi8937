#
# Copyright (C) 2021 The cherishOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common cherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from mi8937 device
$(call inherit-product, device/xiaomi/mi8937/device.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-cherish

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mi8937
PRODUCT_NAME := cherish_mi8937
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi8937 (R3SPX/R4/R4A/R4X/R5A/RN5A)
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ugg-user 7.1.2 N2G47H V9.5.8.0.NDKMIFA release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/ugg/ugg:7.1.2/N2G47H/V9.5.8.0.NDKMIFA:user/release-keys"

# CherishOS
#CHERISH_NONGAPPS := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_LIVE_WALLPAPERS := false
