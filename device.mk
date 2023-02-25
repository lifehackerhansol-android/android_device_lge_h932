#
# Copyright (C) 2018-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lge/h932

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# OTA
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# common v30
$(call inherit-product, device/lge/joan-common/joan.mk)

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/lge/h932/h932-vendor.mk)
