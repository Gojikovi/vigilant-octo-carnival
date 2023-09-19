#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from K50a40 device
$(call inherit-product, device/lenovo/K50a40/device.mk)

PRODUCT_DEVICE := K50a40
PRODUCT_NAME := omni_K50a40
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo K50a40
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aio_5m-user 6.0 MRA58K K50a40_S427_160518_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/aio_otfp/K50a40:6.0/MRA58K/K50a40_S427_160518_ROW:user/release-keys
