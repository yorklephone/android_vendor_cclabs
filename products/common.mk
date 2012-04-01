# Generic ccmod product
PRODUCT_NAME := cclabs
PRODUCT_BRAND := cclabs
PRODUCT_DEVICE := generic

PRODUCT_PACKAGES += ADWLauncher

ifdef cc_NIGHTLY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=ccLabsnightly
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=ccLabs
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=yyyy-MM-dd \
    ro.com.android.dataroaming=false

# ccMod specific product packages
PRODUCT_PACKAGES += \
    AndroidTerm \
    CMParts \
    CMUpdateNotify \
    DSPManager \
    libcyanogen-dsp \
    Pacman \
    screenshot \
    CMScreenshot

# Extra tools in ccMod
PRODUCT_PACKAGES += \
    openvpn

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/cclabs/CHANGELOG.mkdn:system/etc/CHANGELOG-CM.txt

# Common CM overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cclabs/overlay/common

# T-Mobile theme engine
include vendor/cclabs/products/themes_common.mk

PRODUCT_COPY_FILES += \
    vendor/cclabs/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/cclabs/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    vendor/cclabs/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/cclabs/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/cclabs/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/cclabs/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/cclabs/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/cclabs/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/cclabs/prebuilt/common/etc/profile:system/etc/profile \
    vendor/cclabs/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/cclabs/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/cclabs/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/cclabs/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/cclabs/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/cclabs/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/cclabs/prebuilt/common/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/cclabs/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/cclabs/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/cclabs/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cclabs/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/cclabs/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/cclabs/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/cclabs/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/cclabs/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/cclabs/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

PRODUCT_COPY_FILES += \
    vendor/cclabs/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Always run in insecure mode, enables root on user build variants
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

ifdef CC_WITH_GOOGLE

else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch
endif

# Required, keyboard
#PRODUCT_PACKAGES += LatinIME

