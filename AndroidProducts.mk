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
    $(LOCAL_DIR)/revengeos_mi8937.mk

COMMON_LUNCH_CHOICES += \
    revengeos_mi8937-user \
    revengeos_mi8937-userdebug \
    revengeos_mi8937-eng
