PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)
PRODUCT_PACKAGES += sensors.$(TARGET_PRODUCT)

PRODUCT_COPY_FILES := \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    $(LOCAL_PATH)/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/btn_switch:system/xbin/btn_switch

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := tegav2
PRODUCT_DEVICE := tegav2
PRODUCT_MANUFACTURER := Tegatech

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays
