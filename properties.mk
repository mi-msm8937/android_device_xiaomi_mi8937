#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.camera.CDS=off \
persist.vendor.camera.video.CDS=off

# Camera - ulysse
PRODUCT_PROPERTY_OVERRIDES += \
persist.s5k3p8sp.flash.low=320 \
persist.s5k3p8sp.flash.light=300 \
persist.ov16885.flash.low=290 \
persist.ov16885.flash.light=275

# Display
PRODUCT_PROPERTY_OVERRIDES += \
ro.sf.lcd_density=267
