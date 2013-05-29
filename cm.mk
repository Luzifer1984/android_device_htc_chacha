# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/chacha/device_chacha.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := chacha
PRODUCT_NAME := cm_chacha
PRODUCT_BRAND := htc
PRODUCT_MODEL := chacha
PRODUCT_MANUFACTURER := htc

PRODUCT_VERSION_DEVICE_RELEASE := A1
PRODUCT_VERSION_DEVICE_SPECIFIC := $(PRODUCT_VERSION_DEVICE_RELEASE)-V0

# CM_RELEASE := true
CM_BUILDTYPE := UNOFFICIAL
CM_EXTRAVERSION := $(PRODUCT_VERSION_DEVICE_RELEASE)


BUILD_ID := CM10.1-$(shell date -u +%Y%m%d)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_chacha BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=cyanogenmod/htc_chacha/chacha:4.2.2/$(BUILD_ID)/v0.1:user/release-keys
PRODUCT_RELEASE_NAME := TsieFa(CRYPTOMILK-based)
