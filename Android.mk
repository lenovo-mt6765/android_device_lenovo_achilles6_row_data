#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),achilles6_row_data)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
