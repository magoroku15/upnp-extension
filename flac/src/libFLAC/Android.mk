LOCAL_PATH:= $(call my-dir)
#TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	bitmath.c \
        bitreader.c \
        bitwriter.c \
        cpu.c \
        crc.c \
        fixed.c \
        float.c \
        format.c \
        lpc.c \
        md5.c \
        memory.c \
        metadata_iterators.c \
        metadata_object.c \
        stream_decoder.c \
        stream_encoder.c \
        stream_encoder_framing.c \
        window.c \
	ogg_decoder_aspect.c \
	ogg_encoder_aspect.c \
	ogg_helper.c \
	ogg_mapping.c



#	imgresample.c


LOCAL_C_INCLUDES += $(LOCAL_PATH)/../..
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../include
LOCAL_C_INCLUDES += external/upnp-extension/libogg/include

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  


LOCAL_MODULE:= libFLAC

include $(BUILD_STATIC_LIBRARY)

