#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device
DEVICE := mi8937

# Inherit from msm8937-common
$(call inherit-product, device/xiaomi/msm8937-common/msm8937.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_landtoni_overlay \
    xiaomi_prada_overlay \
    xiaomi_rolex_overlay \
    xiaomi_riva_overlay \
    xiaomi_ugg_overlay \
    xiaomi_ugglite_overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/blank.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/land_mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/land_mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/audio/prada_mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/prada_mixer_paths_mtp.xml \
    $(LOCAL_PATH)/audio/rolex_mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/rolex_mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/audio/riva_mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/riva_mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/audio/santoni_mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/santoni_mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/audio/ulysse_mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ulysse_mixer_paths_mtp.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku2.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blankfile:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/.placeholder

# Camera
PRODUCT_PACKAGES += \
    camera.land \
    camera.rova \
    camera.ulysse \
    libLmcamera_interface \
    libLmjpeg_interface \
    libLmlib2d_interface \
    libLomx_core \
    libUmcamera_interface \
    libUmjpeg_interface \
    libUmlib2d_interface \
    libUomx_core

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.xiaomi_mi8937

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel-maxtouch.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/atmel-maxtouch.kl \
    $(LOCAL_PATH)/keylayout/fts_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5346.kl \
    $(LOCAL_PATH)/keylayout/fts_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_720p.kl \
    $(LOCAL_PATH)/keylayout/fts_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/fts_ts.kl \
    $(LOCAL_PATH)/keylayout/goodix-ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/goodix-ts.kl \
    $(LOCAL_PATH)/keylayout/ist30xx_ts_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ist30xx_ts_input.kl \
    $(LOCAL_PATH)/keylayout/msm8952-sku1-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8952-sku1-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/msm8952-snd-card-mtp_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8952-snd-card-mtp_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/uinput-gf.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gf3208.kl \
    $(LOCAL_PATH)/keylayout/uinput-gf.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-gf.kl

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blankfile:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/landtoni_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/landtoni_sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/prada_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/prada_sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/rolex_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/rolex_sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/riva_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/riva_sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/ulysse_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/ulysse_sensor_def_qcomdev.conf

# Shims
PRODUCT_PACKAGES += \
    fakelogprint \
    libshims_android \
    libshims_binder \
    libshims_c_camera \
    libshims_ui \
    libwui

# Rootdir
PRODUCT_PACKAGES += \
    init.baseband.sh \
    init.goodix.sh \
    init.xiaomi.device.rc \
    init.xiaomi.device.sh

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service

# Wifi
PRODUCT_PACKAGES += \
    WifiOverlay_prada

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/mi8937/mi8937-vendor.mk)
