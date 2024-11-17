LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../lua
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_MODULE     := lcrc32c
LOCAL_CPPFLAGS += -std=c++23 -O3 -ffast-math
LOCAL_CPPFLAGS += -march=armv8-a+crc+aes
LOCAL_SRC_FILES  := lcrc32c.cpp crc32c/crc32c.cc crc32c/crc32c_portable.cc crc32c/crc32c_arm64.cc
LOCAL_STATIC_LIBRARIES := luajava

include $(BUILD_SHARED_LIBRARY)
