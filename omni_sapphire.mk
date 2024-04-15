#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sapphire device
$(call inherit-product, device/xiaomi/sapphire/device.mk)

PRODUCT_DEVICE := sapphire
PRODUCT_NAME := omni_sapphire
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := sapphire
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sapphire_global-user 13 TKQ1.221114.001 V14.0.7.0.TNGMIXM release-keys"

BUILD_FINGERPRINT := Redmi/sapphire_global/sapphire:13/TKQ1.221114.001/V14.0.7.0.TNGMIXM:user/release-keys
