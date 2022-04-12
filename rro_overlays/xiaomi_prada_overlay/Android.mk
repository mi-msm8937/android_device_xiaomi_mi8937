LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := xiaomi_prada_overlay
LOCAL_SDK_VERSION := current
include $(BUILD_RRO_PACKAGE)
