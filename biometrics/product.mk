# Overlays
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/mi8937/biometrics/overlay-lineage

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.xiaomi_mi8937 \
    android.hardware.biometrics.fingerprint@2.2
