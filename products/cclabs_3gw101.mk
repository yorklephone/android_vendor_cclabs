# Inherit device configuration for 3GW101.
$(call inherit-product, device/lenovo/3GW101/vanilla_3GW101.mk)

# Inherit some common cclabs stuff.
$(call inherit-product, vendor/cclabs/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cclabs/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cclabs_3GW101
PRODUCT_BRAND := Lenovo
PRODUCT_DEVICE := 3GW101
PRODUCT_MODEL := 3GW101
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lephone_002w PRODUCT_DEVIE=lephone_002w BUILD_ID=GRK39F BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

# Add the Torch app
#PRODUCT_PACKAGES += Torch

# Release name and versioning
PRODUCT_RELEASE_NAME := lephone_002w
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cclabs/products/common_versions.mk

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cclabs/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
