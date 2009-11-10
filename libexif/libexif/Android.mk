LOCAL_PATH:= $(call my-dir)
#TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        exif-byte-order.c       \
        exif-content.c          \
        exif-data.c             \
        exif-entry.c            \
        exif-format.c           \
        exif-ifd.c              \
        exif-loader.c           \
        exif-log.c              \
        exif-mem.c              \
        exif-mnote-data.c       \
        exif-mnote-data-priv.h  \
        exif-tag.c              \
        exif-utils.c            \
        canon/mnote-canon-entry.c \
	canon/exif-mnote-data-canon.c \
	canon/mnote-canon-tag.c \
	fuji/mnote-fuji-entry.c \
	fuji/exif-mnote-data-fuji.c \
	fuji/mnote-fuji-tag.c \
	olympus/mnote-olympus-entry.c \
	olympus/exif-mnote-data-olympus.c \
	olympus/mnote-olympus-tag.c \
	pentax/mnote-pentax-entry.c \
	pentax/exif-mnote-data-pentax.c \
	pentax/mnote-pentax-tag.c \


#	imgresample.c


LOCAL_C_INCLUDES += $(LOCAL_PATH)/..

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  


LOCAL_MODULE:= libexif

include $(BUILD_STATIC_LIBRARY)

