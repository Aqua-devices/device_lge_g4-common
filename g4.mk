#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, vendor/aquarios/config/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, vendor/aquarios/config/phone-xxxhdpi-3072-hwui-memory.mk)
$(call inherit-product, vendor/aquarios/config/utils.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi 560dpi xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := 560dpi

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/lge/g4-common/g4-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libmm-omxcore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw \
    qcmediaplayer

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

include $(LOCAL_PATH)/product/*.mk


