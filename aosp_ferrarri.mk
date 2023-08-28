# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ferrarri device
$(call inherit-product, device/realme/ferrarri/device.mk)

# Inherit some common Pixel stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_NAME := aosp_ferrarri
PRODUCT_DEVICE := ferrarri
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3301

PRODUCT_SYSTEM_NAME := RED8ACL1
PRODUCT_SYSTEM_DEVICE := RED8ACL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3301-user 13 SKQ1.221119.001 S.10ad296_1-75a33 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3301/RED8ACL1:13/SKQ1.221119.001/S.10ad296_1-75a33:user/release-keys
