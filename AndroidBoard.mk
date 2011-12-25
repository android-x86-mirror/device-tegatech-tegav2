LOCAL_PATH := $(call my-dir)
LOCAL_FIRMWARES := ath3k-1.fw $(notdir $(wildcard device/common/firmware/iwlwifi-*))
TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/tegav2_info
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/tegav2_defconfig

include $(GENERIC_X86_ANDROID_MK)
