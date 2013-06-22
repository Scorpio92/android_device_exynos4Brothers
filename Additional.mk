#Additional apps(default - not include in ROM)
PRODUCT_PACKAGES += \
    PicoTts \
    VideoEditor \
    Email \
    Exchange2 \
    Launcher2 \
    Music \

PRODUCT_PACKAGES += \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer


# Get the TTS language packs
$(call inherit-product-if-exists, external/svox/pico/lang/all_pico_languages.mk)
