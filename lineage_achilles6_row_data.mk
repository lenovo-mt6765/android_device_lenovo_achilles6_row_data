#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/lenovo/achilles6_row_data/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_achilles6_row_data
PRODUCT_DEVICE := achilles6_row_data
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Tab M10FHD-Plus 2nd Gen

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=achilles6_row_data \
    PRIVATE_BUILD_DESC="full_achilles6_row_data-user 10 QP1A.190711.020 TB-X606X_U release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X606X_EEA/X606X:10/QP1A.190711.020/TB-X606X_USR_S300673_2206131545_V9.56_BMP_ROW:user/release-keys
