# scorpio92(4PDA), config for Cellon C8960, Newman N2, Freelander i20
#2013

#Gralloc build fix
$(shell mkdir -p out/target/product/c8690/obj/SHARED_LIBRARIES/libUMP_intermediates)
$(shell touch out/target/product/c8690/obj/SHARED_LIBRARIES/libUMP_intermediates/export_includes)

$(call inherit-product, device/cellon/c8690/common.mk)

# kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel/highscreen/zImage:kernel

$(call inherit-product-if-exists, vendor/samsung/i9300/highscreen.mk)

PRODUCT_NAME := highscreen
PRODUCT_DEVICE := i9300
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9300

