LOCAL_PATH:= $(call my-dir)
TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

TARGET_USHARE_CONF_DIR := $(TARGET_OUT)/system/etc
LOCAL_USHARE_CONF_DIR  := $(LOCAL_PATH)/../scripts

copy_from := ushare.conf
copy_to   := $(addprefix $(TARGET_USHARE_CONF_DIR)/,$(copy_from))
copy_from := $(addprefix $(LOCAL_USHARE_CONF_DIR)/,$(copy_from))
$(copy_to) : $(TARGET_USHARE_CONF_DIR)/% : $(LOCAL_USHARE_CONF_DIR)/% | $(ACP)
        $(transform-prebuilt-to-target)

ALL_PREBUILT += $(copy_to)


LOCAL_SRC_FILES := \
        cds.c \
        cms.c \
        msr.c \
        http.c \
        presentation.c \
        metadata.c \
        mime.c \
        services.c \
        buffer.c \
        util_iconv.c \
        content.c \
        cfgparser.c \
        trace.c \
        redblack.c \
        osdep.c \
        ctrl_telnet.c \
        ushare.c \


LOCAL_CFLAGS := \
	-D_REENTRANT \
	-D_THREAD_SAFE \
	-DHAVE_DLNA \
	-D_FILE_OFFSET_BITS=64 \
	-DVERSION=\"1.1a\"  -DPACKAGE=\"ushare\" -DPACKAGE_NAME=\"uShare\" -DSYSCONFDIR=\"/system/etc\" -DLOCALEDIR=\"/data/ushare/locale\"

LOCAL_C_INCLUDES += external/upnp-extension/libupnp/upnp/inc
LOCAL_C_INCLUDES += external/upnp-extension/libupnp/ixml/inc
LOCAL_C_INCLUDES += external/upnp-extension/libdlna/src
LOCAL_C_INCLUDES += external/upnp-extension/ushare
LOCAL_C_INCLUDES += external/zlib



LOCAL_LDLIBS= -lz
LOCAL_MODULE:= ushare
LOCAL_STATIC_LIBRARIES := libupnp libdlna libavformat libavcodec libavutil libz

include $(BUILD_EXECUTABLE)


