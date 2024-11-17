#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from S24 device
$(call inherit-product, device/mobiwire/S24/device.mk)

PRODUCT_DEVICE := S24
PRODUCT_NAME := omni_S24
PRODUCT_BRAND := Altice
PRODUCT_MODEL := S24
PRODUCT_MANUFACTURER := mobiwire

PRODUCT_GMS_CLIENTID_BASE := android-mobiwire

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k39tv1_bsp_1g-user 10 QP1A.190711.020 1629990265 release-keys"

BUILD_FINGERPRINT := Altice/S24_EEA/S24:10/QP1A.190711.020/1629990265:user/release-keys
