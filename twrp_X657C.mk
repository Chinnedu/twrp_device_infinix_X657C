#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from X657C device
$(call inherit-product, device/infinix/X657C/device.mk)

PRODUCT_DEVICE := X657C
PRODUCT_NAME := twrp_X657C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix smart 5
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x657c_h6117-user 11 RP1A.200720.011 131470 release-keys"

BUILD_FINGERPRINT := Infinix/X657C-INJO/Infinix-X657C:11/RP1A.200720.011/210716V170:user/release-keys
