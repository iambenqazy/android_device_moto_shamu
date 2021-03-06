# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common AICP stuff.
$(call inherit-product, vendor/colt/config/common_full_phone.mk)
$(call inherit-product, vendor/colt/config/colt.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/moto/shamu/apns-conf.xml:system/etc/apns-conf.xml

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-lineage

# Device identifier. This must come after all inclusions
PRODUCT_NAME := colt_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F27M/4299435:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F27M 4299435 release-keys"
