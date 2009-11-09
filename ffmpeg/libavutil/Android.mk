LOCAL_PATH:= $(call my-dir)
#TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
       adler32.c \
       aes.c \
       base64.c \
       crc.c \
       des.c \
       fifo.c \
       intfloat_readwrite.c \
       lls.c \
       log.c \
       lzo.c \
       mathematics.c \
       md5.c \
       mem.c \
       random.c \
       rational.c \
       rc4.c \
       sha1.c \
       string.c \
       tree.c \

LOCAL_MODULE:= libavutil
LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H
LOCAL_C_INCLUDES += $(LOCAL_PATH)/..

include $(BUILD_STATIC_LIBRARY)

