#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common msm8937-common
include device/xiaomi/msm8937-common/BoardConfigCommon.mk
include device/xiaomi/mi8937/biometrics/board.mk

DEVICE_PATH := device/xiaomi/mi8937

# Asserts
TARGET_OTA_ASSERT_DEVICE := landtoni,land,santoni,ulysse,ugglite,ugg,rova,rolex,riva,prada,mi8937

# Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/bin/land_mm-qcamera-daemon=23

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
BOARD_KERNEL_CMDLINE += earlycon=msm_hsl_uart,0x78b000
TARGET_KERNEL_CONFIG := mi8937_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8937

# Lights
SOONG_CONFIG_XIAOMI_MSM8937_LIGHTS_WHITE_LED := true

# Partitions
TARGET_COPY_OUT_VENDOR := vendor
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10332634112 # 10332650496 - 16384
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/sys/dev/dt2w"

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.recovery.qcom

# RIL
TARGET_USES_OLD_MNC_FORMAT := true

# Security patch level
VENDOR_SECURITY_PATCH := 2018-04-01

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
include vendor/xiaomi/mi8937/BoardConfigVendor.mk
