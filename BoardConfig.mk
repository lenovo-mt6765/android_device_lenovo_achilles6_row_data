#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lenovo/achilles6_row_data

# Inherit from mt6765-common
include device/lenovo/mt6765-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 240

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)/prebuilt/lkm-4.9/*.ko)

# Inherit from the proprietary version
include vendor/lenovo/mt6765-common/BoardConfigVendor.mk
