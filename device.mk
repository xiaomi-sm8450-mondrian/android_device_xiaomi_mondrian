#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/mondrian/mondrian-vendor.mk)

# Inherit from MiuiCamera setup
$(call inherit-product, device/xiaomi/miuicamera-mondrian/device.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/card-defs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/card-defs.xml \
    $(LOCAL_PATH)/audio/microphone_characteristics.xml:$(TARGET_COPY_OUT_VENDOR)/etc/microphone_characteristics.xml \
    $(LOCAL_PATH)/audio/mixer_paths_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cape/mixer_paths_waipio_mtp.xml \
    $(LOCAL_PATH)/audio/resourcemanager_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cape/resourcemanager_waipio_mtp.xml \
    $(LOCAL_PATH)/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# Logging
SPAMMY_LOG_TAGS := \
    MiStcImpl \
    SDM \
    SDM-histogram \
    SRE \
    WifiHAL \
    cnss-daemon \
    libcitsensorservice@2.0-impl \
    libsensor-displayalgo \
    libsensor-parseRGB \
    libsensor-ssccalapi \
    sensors \
    vendor.qti.hardware.display.composer-service \
    vendor.xiaomi.sensor.citsensorservice@2.0-service
ifneq ($(TARGET_BUILD_VARIANT),eng)
PRODUCT_VENDOR_PROPERTIES += \
    $(foreach tag,$(SPAMMY_LOG_TAGS),log.tag.$(tag)=E)
endif

# Overlay
PRODUCT_PACKAGES += \
    ApertureResMondrian \
    FrameworksResMondrian \
    FrameworksResMondrianGlobal \
    LineageResMondrian \
    NfcResMondrian \
    SettingsProviderResMondrian \
    SettingsProviderResMondrianCN \
    SettingsResMondrian \
    SystemUIResMondrian \
    WifiResMondrian \
    WifiResMondrianCN

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# System properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/properties/build_CN.prop:$(TARGET_COPY_OUT_ODM)/etc/build_CN.prop \
    $(LOCAL_PATH)/properties/build_GL.prop:$(TARGET_COPY_OUT_ODM)/etc/build_GL.prop

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/properties/build_CN.prop:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/odm/etc/build_CN.prop \
    $(LOCAL_PATH)/properties/build_GL.prop:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/odm/etc/build_GL.prop
