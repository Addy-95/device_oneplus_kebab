#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Spark stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

PRODUCT_NAME := spark_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005

PRODUCT_SYSTEM_NAME := OnePlus8T
PRODUCT_SYSTEM_DEVICE := OnePlus8T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# SparkOS stuff
PRODUCT_USES_QCOM_HARDWARE := false
WITH_GAPPS := true
WITH_FOD_ANIMATIONS := true
TARGET_USES_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8T-user 13 RKQ1.211119.001 R.1038153-5ce-8e549 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8T/OnePlus8T:13/RKQ1.211119.001/R.1038153-5ce-8e549:user/release-keys
