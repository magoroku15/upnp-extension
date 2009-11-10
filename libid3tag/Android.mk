LOCAL_PATH:= $(call my-dir)
#TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	version.c ucs4.c latin1.c utf16.c \
        utf8.c parse.c render.c field.c frametype.c compat.c genre.c \
        frame.c crc.c util.c tag.c file.c 

#	imgresample.c


LOCAL_C_INCLUDES += external/zlib

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  


LOCAL_MODULE:= libid3tag

include $(BUILD_STATIC_LIBRARY)

