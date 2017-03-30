# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common shinano definitions
include device/sony/shinano-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := D6602,D6603,D6633,D6643,D6653,z3,leo

TARGET_SPECIFIC_HEADER_PATH += device/sony/z3/include

BOARD_HARDWARE_CLASS += device/sony/z3/cmhw

TARGET_BOOTLOADER_BOARD_NAME := D6603

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/msm8974
TARGET_KERNEL_CONFIG := lineageos_shinano_leo_defconfig

TARGET_RECOVERY_DEVICE_MODULES += twrp.fstab

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688 # 12656259072 - 16384

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/sony/z3/sepolicy


USE_LEGACY_BLOBS := true
  #will become USE_LEGACY_BLOBS in cm-14.0
  #see https://review.cyanogenmod.org/#/c/158551/
  # thanks to forkbomb

#Camera
TARGET_PROVIDES_CAMERA_HAL := true
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
BOARD_CAMERA_HAVE_ISO := true

#DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"
