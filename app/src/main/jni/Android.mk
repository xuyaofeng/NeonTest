LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := hello-jni

TARGET_ARCH_ABI :＝ armeabi-v7a

LOCAL_SRC_FILES := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/*.c))\
                   $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/*.cpp))



LOCAL_ARM_MODE := arm

TARGET_CFLAGS += -mthumb-interwork
TARGET_CFLAGS += -std=gnu11
TARGET_CFLAGS += -O3

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CFLAGS := -DHAVE_NEON=1
    LOCAL_SRC_FILES += hey.s.neon
    LOCAL_ARM_NEON  := true
endif

LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog


include $(BUILD_SHARED_LIBRARY)

