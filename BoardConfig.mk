#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oplus/sm8450-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/ferrarri

# Display
TARGET_SCREEN_DENSITY := 450

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_KERNEL_DIR := $(DEVICE_PATH)-kernel
KERNEL_MODULE_DIR := $(TARGET_KERNEL_DIR)/modules

BOARD_PREBUILT_DTBIMAGE_DIR := $(TARGET_KERNEL_DIR)
BOARD_PREBUILT_DTBOIMAGE := $(TARGET_KERNEL_DIR)/dtbo.img
TARGET_PREBUILT_KERNEL := $(TARGET_KERNEL_DIR)/kernel

# Kernel modules
KERNEL_MODULES := $(wildcard $(KERNEL_MODULE_DIR)/*.ko)

BOARD_VENDOR_KERNEL_MODULES := $(addprefix $(KERNEL_MODULE_DIR)/, $(notdir $(BOARD_VENDOR_KERNEL_MODULES_LOAD)))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(addprefix $(KERNEL_MODULE_DIR)/, $(notdir $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD)))
#BOARD_VENDOR_RAMDISK_KERNEL_MODULES_ARCHIVE := $(KERNEL_MODULE_DIR)/vendor_ramdisk_include.zip

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Vibrator
# SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_VIBRATOR_HAL
# SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL := \
#     USE_EFFECT_STREAM
# SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL_USE_EFFECT_STREAM := true

# Include the proprietary files BoardConfig.
include vendor/realme/ferrarri/BoardConfigVendor.mk
