#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common CherishOS stuff
TARGET_INCLUDE_LIVE_WALLPAPERS := true

ifneq ($(WITH_GMS),true)
USE_LAWNCHAIR := true
endif

$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=nazunamoe

# Device identifier. This must come after all inclusions
DEVICE_MAINTAINER := nazunamoe
CHERISH_BUILD_TYPE := OFFICIAL

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
