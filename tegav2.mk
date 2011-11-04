PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)
PRODUCT_PACKAGES += sensors.$(TARGET_PRODUCT)
PRODUCT_PACKAGES += io_switch

PRODUCT_COPY_FILES := \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    $(SRC_TARGET_DIR)/board/generic_x86/GenericTouch.idc:system/usr/idc/Vendor_20b3_Product_0a18.idc \
    $(SRC_TARGET_DIR)/board/generic_x86/GenericTouch.idc:system/usr/idc/Vendor_03eb_Product_201c.idc \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := tegav2
PRODUCT_DEVICE := tegav2
PRODUCT_MANUFACTURER := Tegatech

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays
