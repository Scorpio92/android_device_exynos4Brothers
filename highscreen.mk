# scorpio92(4PDA), config for Cellon C8960, Newman N2, Freelander i20
#2013

$(call inherit-product, device/cellon/c8690/common.mk)

# kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel/highscreen/zImage:kernel

$(call inherit-product-if-exists, vendor/cellon/c8690/highscreen.mk)

PRODUCT_NAME := highscreen
PRODUCT_DEVICE := c8690
PRODUCT_BRAND := cellon
PRODUCT_MANUFACTURER := cellon
PRODUCT_MODEL := c8690

