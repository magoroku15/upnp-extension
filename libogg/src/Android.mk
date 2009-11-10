LOCAL_PATH:= $(call my-dir)
#TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	bitwise.c  framing.c

#	imgresample.c


LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  


LOCAL_MODULE:= libogg

include $(BUILD_STATIC_LIBRARY)

