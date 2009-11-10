LOCAL_PATH:= $(call my-dir)
#TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
 	mdct.c smallft.c block.c envelope.c window.c lsp.c \
        lpc.c analysis.c synthesis.c psy.c info.c \
        floor1.c floor0.c\
        res0.c mapping0.c registry.c codebook.c sharedbook.c\
        lookup.c bitrate.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/..
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include
LOCAL_C_INCLUDES += external/upnp-extension/libogg/include

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  


LOCAL_MODULE:= libvorbis

include $(BUILD_STATIC_LIBRARY)

