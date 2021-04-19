#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_mi8937.mk

COMMON_LUNCH_CHOICES := \
    lineage_mi8937-user \
    lineage_mi8937-userdebug \
    lineage_mi8937-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/cherish_mi8937.mk

COMMON_LUNCH_CHOICES += \
    cherish_mi8937-user \
    cherish_mi8937-userdebug \
    cherish_mi8937-eng
