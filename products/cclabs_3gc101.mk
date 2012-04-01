# Inherit AOSP device configuration for 3GC101.
$(call inherit-product, device/lenovo/3GC101/vanilla_3GC101.mk)

# Inherit some common cclabs stuff.
$(call inherit-product, vendor/cclabs/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cclabs/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cclabs_3GC101
PRODUCT_BRAND := Lenovo
PRODUCT_DEVICE := 3GC101
PRODUCT_MODEL := 3GC101
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lephone_002e  PRODUCT_DEVICE=lephone_002e BUILD_ID=GRK39F BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

#PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cclabs/prelink-linux-arm-msm722x.map

# Broadcom FM radio
$(call inherit-product, vendor/cclabs/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := lephone_002e
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cclabs/products/common_versions.mk

#
# Copy liberty specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cclabs/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
