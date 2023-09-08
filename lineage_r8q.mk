#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from r8q device
$(call inherit-product, device/samsung/r8q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME         := lineage_r8q
PRODUCT_DEVICE       := r8q
PRODUCT_BRAND        := samsung
PRODUCT_MODEL        := SM-G781B
CUSTOM_DEVICE        := Samsung S20 FE 5G
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung	

# Vendor fingerprint - 2023 July
BUILD_FINGERPRINT  := "samsung/r8qxxx/qssi:13/TP1A.220624.014/G781BXXS7HWF3:user/release-keys"
PRIVATE_BUILD_DESC := "r8qxxx-user 13 TP1A.220624.014 G781BXXS7HWF3 release-keys"
