LOCAL_PATH:= $(call my-dir)
TOP := $(LOCAL_PATH)

PV_TOP = $(TOP)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	src/audio_aac.c \
	src/audio_ac3.c \
	src/audio_amr.c \
	src/audio_atrac3.c \
	src/audio_g726.c \
	src/audio_lpcm.c \
	src/audio_mp2.c \
	src/audio_mp3.c \
	src/audio_wma.c \
	src/av_mpeg1.c \
	src/av_mpeg2.c \
	src/av_mpeg4_part10.c \
	src/av_mpeg4_part2.c \
	src/av_wmv9.c \
	src/containers.c \
	src/image_jpeg.c \
	src/image_png.c \
	src/profiles.c \
	src/upnp_dms.c 

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  -D_THREAD_SAFE -DDEBUG
LOCAL_C_INCLUDES += $(LOCAL_PATH)
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/ixml/inc/
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/threadutil/inc/
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/upnp/inc/
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/upnp/src/inc/

LOCAL_MODULE:= libdlna

include $(BUILD_STATIC_LIBRARY)

include $(PV_TOP)/libavcodec/Android.mk
include $(PV_TOP)/libavutil/Android.mk
include $(PV_TOP)/libavformat/Android.mk

############################################

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ \
        external/zlib


#include $(CLEAR_VARS)
#LOCAL_SRC_FILES:= \
#	test-libdlna.c

#LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  -D_THREAD_SAFE -DDEBUG
#LOCAL_C_INCLUDES += $(UPNP_TOP)/src

#LOCAL_LDLIBS += -lpthread -lm
#LOCAL_MODULE := test-libdlna
#LOCAL_STATIC_LIBRARIES := libdlna
#include $(BUILD_EXECUTABLE)

