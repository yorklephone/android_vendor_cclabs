# Inherit common CM stuff
$(call inherit-product, vendor/cclabs/products/common.mk)

# ccMod specific product packages
PRODUCT_PACKAGES += \
    CMWallpapers

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

# Theme packages
include vendor/cclabs/products/themes.mk

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/cclabs/overlay/dictionaries

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg
