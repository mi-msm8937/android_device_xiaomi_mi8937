#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
$(call inherit-product, device/xiaomi/msm8937-common/msm8937.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    mi8937_land_overlay \
    mi8937_riva_overlay \
    mi8937_rolex_overlay \
    mi8937_santoni_overlay \
    mi8937_ugg_overlay \
    mi8937_ugglite_overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/land_mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/land_mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/audio/riva_mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/riva_mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/audio/rolex_mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/rolex_mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/audio/rolex_mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/rolex_mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/audio/santoni_mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/santoni_mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/audio/ulysse_mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ulysse_mixer_paths_mtp.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blankfile:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/.placeholder

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5346.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5346.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_720p.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_720p.kl \
    $(LOCAL_PATH)/keylayout/fts_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/fts_ts.kl \
    $(LOCAL_PATH)/keylayout/gf3208.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gf3208.kl \
    $(LOCAL_PATH)/keylayout/goodix-ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/goodix-ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/ist30xx_ts_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ist30xx_ts_input.kl \
    $(LOCAL_PATH)/keylayout/msm8920-sku7-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8920-sku7-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/msm8952-sku1-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8952-sku1-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/msm8952-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8952-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/qpnp_pon.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/uinput-gf.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-gf.kl

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Properties
include $(LOCAL_PATH)/properties.mk

# Rootdir
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mi8937.rc \
    init.mi8937.audio.rc \
    init.mi8937.sensors.rc

PRODUCT_PACKAGES += \
    init.xiaomi.device.sh

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blankfile:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/land_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/land_sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/santoni_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/santoni_sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/rova_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/rova_sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/ulysse_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/ulysse_sensor_def_qcomdev.conf

# VNDK
PRODUCT_PACKAGES += vndk-ext

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/mi8937/mi8937-vendor.mk)
