# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Specify phone tech before including full_phone
$(call inherit-product, vendor/razor/config/gsm.mk)

# Inherit some common Razor stuff.
$(call inherit-product, vendor/razor/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/razor/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Release name
PRODUCT_RELEASE_NAME := mako

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mako
PRODUCT_NAME := razor_mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := true

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY48M/2167285:user/release-keys \
   PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY48M 2167285 release-keys"
