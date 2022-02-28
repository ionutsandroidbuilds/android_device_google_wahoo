# Elmyra
PRODUCT_PACKAGES += \
    ElmyraService

# GMS
ifeq ($(WITH_GMS),true)
GMS_MAKEFILE=gms_minimal.mk
endif

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/wahoo/overlay-lineage

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/wahoo/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Parts
PRODUCT_PACKAGES += \
    GoogleParts

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service
