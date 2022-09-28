#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k65v1_64_bsp device
$(call inherit-product, device/vivo/k65v1_64_bsp/device.mk)

PRODUCT_DEVICE := k65v1_64_bsp
PRODUCT_NAME := omni_k65v1_64_bsp
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo PD1901
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k65v1_64_bsp-user 9 P00610 compiler06172329 release-keys"

BUILD_FINGERPRINT := vivo/PD1901/PD1901:9/P00610/compiler06172329:user/release-keys
