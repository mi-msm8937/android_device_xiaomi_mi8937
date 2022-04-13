LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
    system/core/init

LOCAL_HEADER_LIBRARIES := \
    libinit_xiaomi_msm8937_headers \
    libbase_headers

LOCAL_SRC_FILES := init_xiaomi_mi8937.cpp
LOCAL_WHOLE_STATIC_LIBRARIES := libinit_xiaomi_msm8937
LOCAL_MODULE := init_xiaomi_mi8937
include $(BUILD_STATIC_LIBRARY)
