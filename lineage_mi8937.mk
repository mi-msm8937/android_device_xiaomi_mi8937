#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from mi8937 device
$(call inherit-product, device/xiaomi/mi8937/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_landtoni_overlay_lineage \
    xiaomi_ulysse_overlay_lineage

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_prada_overlay_lineage \
    xiaomi_rolex_overlay_lineage \
    xiaomi_riva_overlay_lineage

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mi8937
PRODUCT_NAME := lineage_mi8937
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MSM8937
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ugg-user 7.1.2 N2G47H V11.0.2.0.NDKMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/ugg/ugg:7.1.2/N2G47H/V11.0.2.0.NDKMIXM:user/release-keys"
