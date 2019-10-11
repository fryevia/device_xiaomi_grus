#
# Copyright (C) 2019 The XenonHD Project
#
# SPDX-License-Identifer: Apache-2.0
#

# Inherit some common XenonHD stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit from grus device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := grus
PRODUCT_NAME := aosip_grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 SE
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.021 4565141 release-keys"

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.021/4565141:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="grus" \
    TARGET_DEVICE="grus"

# GApps targets
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# GApps
$(call inherit-product-if-exists, vendor/gapps/config.mk)

# PixelStyle
$(call inherit-product-if-exists, vendor/pixelstyle/config.mk)
