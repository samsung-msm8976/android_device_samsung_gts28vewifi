#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gts28vewifi device
$(call inherit-product, device/samsung/gts28vewifi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts28vewifi
PRODUCT_NAME := lineage_gts28vewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T713
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts28vewifixx \
    PRIVATE_BUILD_DESC="gts28vewifixx-user 7.0 NRD90M T713XXU2BRB2 release-keys"

BUILD_FINGERPRINT := "samsung/gts28vewifixx/gts28vewifi:7.0/NRD90M/T713XXU2BRB2:user/release-keys"
