# scorpio92(4PDA), config for Cellon C8960, Newman N2, Freelander i20
#2013

LOCAL_PATH := device/cellon/c8690

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/battery.bqfs:root/battery.bqfs \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.cm.rc:root/init.cm.rc \
    $(LOCAL_PATH)/ramdisk/init.smdk4x12.rc:root/init.smdk4x12.rc \
    $(LOCAL_PATH)/ramdisk/init.smdk4x12.usb.rc:root/init.smdk4x12.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.smdk4x12.rc:root/ueventd.smdk4x12.rc

# Packages
PRODUCT_PACKAGES := \
    audio.a2dp.default \
    audio.usb.default \
    com.android.future.usb.accessory \
    libhwjpeg \
    hwcomposer.exynos4 \
    libfimg \
	libTVOut \
	libfimc \
    libnetcmdiface \
    libsecion \
    libsync \
    lights.exynos4 \
    macloader \
    tinymix \
    Torch   

# MFC API
PRODUCT_PACKAGES += \
    libsecmfcdecapi \
    libsecmfcencapi

# OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libSEC_OMX_Resourcemanager \
    libSEC_OMX_Core \
    libOMX.SEC.AVC.Decoder \
    libOMX.SEC.M4V.Decoder \
    libOMX.SEC.WMV.Decoder \
    libOMX.SEC.AVC.Encoder \
    libOMX.SEC.M4V.Encoder
#   libOMX.SEC.VP8.Decoder

# Filesystem management tools
PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

# Live Wallpapers
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    librs_jni

# Feature live wallpaper
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Init files
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/ramdisk/init.cm.rc:root/init.cm.rc \
#    $(LOCAL_PATH)/ramdisk/init.smdk4x12.rc:root/init.smdk4x12.rc \
#    $(LOCAL_PATH)/ramdisk/init.smdk4x12.usb.rc:root/init.smdk4x12.usb.rc \
#    $(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
#    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
#    $(LOCAL_PATH)/ramdisk/ueventd.smdk4x12.rc:root/ueventd.smdk4x12.rc


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_TAGS += dalvik.gc.type-precise

# Include exynos4 platform specific parts
TARGET_HAL_PATH := hardware/samsung/exynos4/hal
TARGET_OMX_PATH := hardware/samsung/exynos/multimedia/openmax
$(call inherit-product, hardware/samsung/exynos4x12.mk)

#CM
$(call inherit-product, $(LOCAL_PATH)/cm_full.mk)

#Additional apps
#$(call inherit-product, $(LOCAL_PATH)/Additional.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

