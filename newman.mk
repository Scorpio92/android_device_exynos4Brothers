# scorpio92(4PDA), config for Cellon C8960, Newman N2, Freelander i20
#2013

#Gralloc build fix
$(shell mkdir -p out/target/product/c8690/obj/SHARED_LIBRARIES/libUMP_intermediates)
$(shell touch out/target/product/c8690/obj/SHARED_LIBRARIES/libUMP_intermediates/export_includes)

$(call inherit-product, device/cellon/c8690/common.mk)

# kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel/newman/zImage:kernel

$(call inherit-product-if-exists, vendor/cellon/c8690/newman.mk)

PRODUCT_NAME := newman
PRODUCT_DEVICE := c8690
PRODUCT_BRAND := cellon
PRODUCT_MANUFACTURER := cellon
PRODUCT_MODEL := c8690

