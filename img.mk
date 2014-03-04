LOCAL_PATH := $(call my-dir)

$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES) $(MKIMAGE)
	$(call pretty,"-- Creating c8690 uboot ramdisk image: $@")
	rm $(PRODUCT_OUT)/root/init
	cp -a $(LOCAL_PATH)/ramdisk/init $(PRODUCT_OUT)/root/init
	$(MKIMAGE) -A ARM -O Linux -T ramdisk -C none -a 0x41000000 -e 0x41000000 -n ramdisk -d $(INSTALLED_RAMDISK_TARGET) $(PRODUCT_OUT)/ramdisk
	@echo -e ${CL_CYN}"-- ---> uboot ramdisk image: $(PRODUCT_OUT)/ramdisk"${CL_RST}

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(MKIMAGE) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo -e ${CL_CYN}"-- Creating c8690 uboot recovery image ------"${CL_RST}
	@echo -e ${CL_CYN}"-- --- creating ramdisk image ------"${CL_RST}
	$(MKIMAGE) -A ARM -O Linux -T ramdisk -C none -a 0x41000000 -e 0x41000000 -n ramdisk -d $(recovery_ramdisk) $(PRODUCT_OUT)/ramdisk-recovery-uboot-tmp.img 
	@echo -e ${CL_CYN}"-- --- combaining ramdisk and kernel to uboot-style boot image ------"${CL_RST}
	$(MKBOOTIMG) \
	  --kernel $(recovery_kernel) \
	  --ramdisk $(PRODUCT_OUT)/ramdisk-recovery-uboot-tmp.img \
	  --cmdline $(strip 	$(BOARD_KERNEL_CMDLINE)) \
	  --base $(strip $(BOARD_KERNEL_BASE)) \
	  --ramdiskaddr 0x11000000 \
	  --pagesize $(strip $(BOARD_KERNEL_PAGESIZE))\
	  --output $@
	rm -f $(PRODUCT_OUT)/ramdisk-recovery-uboot-tmp.img
	@echo -e ${CL_CYN}"-- ---> uboot recovery image: $@"${CL_RST}
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
