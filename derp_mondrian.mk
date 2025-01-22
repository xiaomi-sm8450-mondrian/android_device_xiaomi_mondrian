#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_CALL_RECORDING := true

PRODUCT_NAME := derp_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23013PC75G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mondrian_global-user 14 UKQ1.230804.001 V816.0.10.0.UMNMIXM release-keys" \
    BuildFingerprint=POCO/mondrian_global/mondrian:14/UKQ1.230804.001/V816.0.10.0.UMNMIXM:user/release-keys \
    DeviceProduct=mondrian \
    SystemName=mondrian_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi