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

# Inherit from samsung sm8250-common
-include device/samsung/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/r8q

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel
TARGET_KERNEL_CONFIG := vendor/lineage_r8q_defconfig

# Partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 10292822016
BOARD_SUPER_PARTITION_SIZE := 10288627712

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/recovery.fstab

# inherit from the proprietary version
-include vendor/samsung/r8q/BoardConfigVendor.mk
