#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from PB6505M device
$(call inherit-product, device/lenovo/PB6505M/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := PB6505M
PRODUCT_NAME := lineage_PB6505M
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo PB-6505M
PRODUCT_MANUFACTURER := Lenovo
TARGET_VENDOR := Lenovo
BOARD_VENDOR := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-Lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P86255AA1-user 9 PKQ1 eng.cibuil.20200221.201404 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Lenovo/LenovoPB-6505M/PB-6505M:9/PKQ1/PB-6505M_S000053_200221_ROW:user/release-keys
