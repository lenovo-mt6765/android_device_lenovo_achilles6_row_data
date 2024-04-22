#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6765-common
$(call inherit-product, device/lenovo/mt6765-common/mt6765.mk)

# Dalvik Heap Configuration
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 28

# Tablet
PRODUCT_CHARACTERISTICS := tablet

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/Image.gz:kernel

# Inherit from vendor blobs
$(call inherit-product-if-exists, vendor/lenovo/achilles6_row_data/achilles6_row_data-vendor.mk)
