LOCAL_PATH:= $(call my-dir)
#TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	allformats.c \
	cutils.c \
	os_support.c \
	sdp.c \
	utils.c

include $(LOCAL_PATH)/../config.mak

# muxers/demuxers
LOCAL_SRC_FILES-yes :=""
LOCAL_SRC_FILES-$(CONFIG_AAC_DEMUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_AC3_DEMUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_AC3_MUXER)                 += raw.c
LOCAL_SRC_FILES-$(CONFIG_ADTS_MUXER)                += adtsenc.c
LOCAL_SRC_FILES-$(CONFIG_AIFF_DEMUXER)              += aiff.c riff.c raw.c
LOCAL_SRC_FILES-$(CONFIG_AIFF_MUXER)                += aiff.c riff.c
LOCAL_SRC_FILES-$(CONFIG_AMR_DEMUXER)               += amr.c
LOCAL_SRC_FILES-$(CONFIG_AMR_MUXER)                 += amr.c
LOCAL_SRC_FILES-$(CONFIG_APC_DEMUXER)               += apc.c
LOCAL_SRC_FILES-$(CONFIG_APE_DEMUXER)               += ape.c
LOCAL_SRC_FILES-$(CONFIG_ASF_DEMUXER)               += asf.c asfcrypt.c riff.c
LOCAL_SRC_FILES-$(CONFIG_ASF_MUXER)                 += asf-enc.c riff.c
LOCAL_SRC_FILES-$(CONFIG_ASF_STREAM_MUXER)          += asf-enc.c riff.c
LOCAL_SRC_FILES-$(CONFIG_AU_DEMUXER)                += au.c raw.c
LOCAL_SRC_FILES-$(CONFIG_AU_MUXER)                  += au.c
LOCAL_SRC_FILES-$(CONFIG_AVI_DEMUXER)               += avidec.c riff.c
LOCAL_SRC_FILES-$(CONFIG_AVI_MUXER)                 += avienc.c riff.c
LOCAL_SRC_FILES-$(CONFIG_AVISYNTH)                  += avisynth.c
LOCAL_SRC_FILES-$(CONFIG_AVM2_MUXER)                += swfenc.c
LOCAL_SRC_FILES-$(CONFIG_AVS_DEMUXER)               += avs.c vocdec.c voc.c
LOCAL_SRC_FILES-$(CONFIG_BETHSOFTVID_DEMUXER)       += bethsoftvid.c
LOCAL_SRC_FILES-$(CONFIG_BFI_DEMUXER)               += bfi.c
LOCAL_SRC_FILES-$(CONFIG_C93_DEMUXER)               += c93.c vocdec.c voc.c
LOCAL_SRC_FILES-$(CONFIG_CRC_MUXER)                 += crcenc.c
LOCAL_SRC_FILES-$(CONFIG_DAUD_DEMUXER)              += daud.c
LOCAL_SRC_FILES-$(CONFIG_DIRAC_DEMUXER)             += raw.c
LOCAL_SRC_FILES-$(CONFIG_DIRAC_MUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_DSICIN_DEMUXER)            += dsicin.c
LOCAL_SRC_FILES-$(CONFIG_DTS_DEMUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_DTS_MUXER)                 += raw.c
LOCAL_SRC_FILES-$(CONFIG_DV_DEMUXER)                += dv.c
LOCAL_SRC_FILES-$(CONFIG_DV_MUXER)                  += dvenc.c
LOCAL_SRC_FILES-$(CONFIG_DXA_DEMUXER)               += dxa.c riff.c
LOCAL_SRC_FILES-$(CONFIG_EA_CDATA_DEMUXER)          += eacdata.c
LOCAL_SRC_FILES-$(CONFIG_EA_DEMUXER)                += electronicarts.c
LOCAL_SRC_FILES-$(CONFIG_FFM_DEMUXER)               += ffmdec.c
LOCAL_SRC_FILES-$(CONFIG_FFM_MUXER)                 += ffmenc.c
LOCAL_SRC_FILES-$(CONFIG_FLAC_DEMUXER)              += raw.c
LOCAL_SRC_FILES-$(CONFIG_FLAC_MUXER)                += raw.c
LOCAL_SRC_FILES-$(CONFIG_FLIC_DEMUXER)              += flic.c
LOCAL_SRC_FILES-$(CONFIG_FLV_DEMUXER)               += flvdec.c
LOCAL_SRC_FILES-$(CONFIG_FLV_MUXER)                 += flvenc.c avc.c
LOCAL_SRC_FILES-$(CONFIG_FOURXM_DEMUXER)            += 4xm.c
LOCAL_SRC_FILES-$(CONFIG_FRAMECRC_MUXER)            += framecrcenc.c
LOCAL_SRC_FILES-$(CONFIG_GIF_MUXER)                 += gif.c
LOCAL_SRC_FILES-$(CONFIG_GSM_DEMUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_GXF_DEMUXER)               += gxf.c
LOCAL_SRC_FILES-$(CONFIG_GXF_MUXER)                 += gxfenc.c
LOCAL_SRC_FILES-$(CONFIG_H261_DEMUXER)              += raw.c
LOCAL_SRC_FILES-$(CONFIG_H261_MUXER)                += raw.c
LOCAL_SRC_FILES-$(CONFIG_H263_DEMUXER)              += raw.c
LOCAL_SRC_FILES-$(CONFIG_H263_MUXER)                += raw.c
LOCAL_SRC_FILES-$(CONFIG_H264_DEMUXER)              += raw.c
LOCAL_SRC_FILES-$(CONFIG_H264_MUXER)                += raw.c
LOCAL_SRC_FILES-$(CONFIG_IDCIN_DEMUXER)             += idcin.c
LOCAL_SRC_FILES-$(CONFIG_IFF_DEMUXER)               += iff.c
LOCAL_SRC_FILES-$(CONFIG_IMAGE2_DEMUXER)            += img2.c
LOCAL_SRC_FILES-$(CONFIG_IMAGE2_MUXER)              += img2.c
LOCAL_SRC_FILES-$(CONFIG_IMAGE2PIPE_DEMUXER)        += img2.c
LOCAL_SRC_FILES-$(CONFIG_IMAGE2PIPE_MUXER)          += img2.c
LOCAL_SRC_FILES-$(CONFIG_INGENIENT_DEMUXER)         += raw.c
LOCAL_SRC_FILES-$(CONFIG_IPMOVIE_DEMUXER)           += ipmovie.c
LOCAL_SRC_FILES-$(CONFIG_IPOD_MUXER)                += movenc.c riff.c isom.c avc.c
LOCAL_SRC_FILES-$(CONFIG_LMLM4_DEMUXER)             += lmlm4.c
LOCAL_SRC_FILES-$(CONFIG_M4V_DEMUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_M4V_MUXER)                 += raw.c
LOCAL_SRC_FILES-$(CONFIG_MATROSKA_AUDIO_MUXER)      += matroskaenc.c matroska.c riff.c avc.c
LOCAL_SRC_FILES-$(CONFIG_MATROSKA_DEMUXER)          += matroskadec.c matroska.c riff.c
LOCAL_SRC_FILES-$(CONFIG_MATROSKA_MUXER)            += matroskaenc.c matroska.c riff.c avc.c
LOCAL_SRC_FILES-$(CONFIG_MJPEG_DEMUXER)             += raw.c
LOCAL_SRC_FILES-$(CONFIG_MJPEG_MUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_MLP_DEMUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_MM_DEMUXER)                += mm.c
LOCAL_SRC_FILES-$(CONFIG_MMF_DEMUXER)               += mmf.c raw.c
LOCAL_SRC_FILES-$(CONFIG_MMF_MUXER)                 += mmf.c riff.c
LOCAL_SRC_FILES-$(CONFIG_MOV_DEMUXER)               += mov.c riff.c isom.c
LOCAL_SRC_FILES-$(CONFIG_MOV_MUXER)                 += movenc.c riff.c isom.c avc.c
LOCAL_SRC_FILES-$(CONFIG_MP2_MUXER)                 += mp3.c
LOCAL_SRC_FILES-$(CONFIG_MP3_DEMUXER)               += mp3.c
LOCAL_SRC_FILES-$(CONFIG_MP3_MUXER)                 += mp3.c
LOCAL_SRC_FILES-$(CONFIG_MP4_MUXER)                 += movenc.c riff.c isom.c avc.c
LOCAL_SRC_FILES-$(CONFIG_MPC_DEMUXER)               += mpc.c
LOCAL_SRC_FILES-$(CONFIG_MPC8_DEMUXER)              += mpc8.c
LOCAL_SRC_FILES-$(CONFIG_MPEG1SYSTEM_MUXER)         += mpegenc.c
LOCAL_SRC_FILES-$(CONFIG_MPEG1VCD_MUXER)            += mpegenc.c
LOCAL_SRC_FILES-$(CONFIG_MPEG2DVD_MUXER)            += mpegenc.c
LOCAL_SRC_FILES-$(CONFIG_MPEG2VOB_MUXER)            += mpegenc.c
LOCAL_SRC_FILES-$(CONFIG_MPEG2SVCD_MUXER)           += mpegenc.c
LOCAL_SRC_FILES-$(CONFIG_MPEG1VIDEO_MUXER)          += raw.c
LOCAL_SRC_FILES-$(CONFIG_MPEG2VIDEO_MUXER)          += raw.c
LOCAL_SRC_FILES-$(CONFIG_MPEGPS_DEMUXER)            += mpeg.c
LOCAL_SRC_FILES-$(CONFIG_MPEGTS_DEMUXER)            += mpegts.c
LOCAL_SRC_FILES-$(CONFIG_MPEGTSRAW_DEMUXER)         += mpegts.c
LOCAL_SRC_FILES-$(CONFIG_MPEGTS_MUXER)              += mpegtsenc.c
LOCAL_SRC_FILES-$(CONFIG_MPEGVIDEO_DEMUXER)         += raw.c
LOCAL_SRC_FILES-$(CONFIG_MPJPEG_MUXER)              += mpjpeg.c
LOCAL_SRC_FILES-$(CONFIG_MSNWC_TCP_DEMUXER)         += msnwc_tcp.c
LOCAL_SRC_FILES-$(CONFIG_MTV_DEMUXER)               += mtv.c
LOCAL_SRC_FILES-$(CONFIG_MVI_DEMUXER)               += mvi.c
LOCAL_SRC_FILES-$(CONFIG_MXF_DEMUXER)               += mxf.c
LOCAL_SRC_FILES-$(CONFIG_NSV_DEMUXER)               += nsvdec.c
LOCAL_SRC_FILES-$(CONFIG_NULL_MUXER)                += raw.c
LOCAL_SRC_FILES-$(CONFIG_NUT_DEMUXER)               += nutdec.c nut.c riff.c
LOCAL_SRC_FILES-$(CONFIG_NUT_MUXER)                 += nutenc.c nut.c riff.c
LOCAL_SRC_FILES-$(CONFIG_NUV_DEMUXER)               += nuv.c riff.c
LOCAL_SRC_FILES-$(CONFIG_OGG_DEMUXER)               += oggdec.c         \
                                            oggparseflac.c   \
                                            oggparseogm.c    \
                                            oggparsespeex.c  \
                                            oggparsetheora.c \
                                            oggparsevorbis.c \
                                            riff.c
LOCAL_SRC_FILES-$(CONFIG_OGG_MUXER)                 += oggenc.c
LOCAL_SRC_FILES-$(CONFIG_OMA_DEMUXER)               += oma.c raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_ALAW_DEMUXER)          += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_ALAW_MUXER)            += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_MULAW_DEMUXER)         += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_MULAW_MUXER)           += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16BE_DEMUXER)         += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16BE_MUXER)           += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16LE_DEMUXER)         += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16LE_MUXER)           += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S8_DEMUXER)            += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S8_MUXER)              += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U16BE_DEMUXER)         += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U16BE_MUXER)           += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U16LE_DEMUXER)         += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U16LE_MUXER)           += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U8_DEMUXER)            += raw.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U8_MUXER)              += raw.c
LOCAL_SRC_FILES-$(CONFIG_PSP_MUXER)                 += movenc.c riff.c isom.c avc.c
LOCAL_SRC_FILES-$(CONFIG_PVA_DEMUXER)               += pva.c
LOCAL_SRC_FILES-$(CONFIG_RAWVIDEO_DEMUXER)          += raw.c
LOCAL_SRC_FILES-$(CONFIG_RAWVIDEO_MUXER)            += raw.c
LOCAL_SRC_FILES-$(CONFIG_REDIR_DEMUXER)             += rtsp.c
LOCAL_SRC_FILES-$(CONFIG_RL2_DEMUXER)               += rl2.c
LOCAL_SRC_FILES-$(CONFIG_RM_DEMUXER)                += rmdec.c
LOCAL_SRC_FILES-$(CONFIG_RM_MUXER)                  += rmenc.c
LOCAL_SRC_FILES-$(CONFIG_ROQ_DEMUXER)               += idroq.c
LOCAL_SRC_FILES-$(CONFIG_ROQ_MUXER)                 += raw.c
LOCAL_SRC_FILES-$(CONFIG_RPL_DEMUXER)               += rpl.c
LOCAL_SRC_FILES-$(CONFIG_RTP_MUXER)                 += rtp.c         \
                                            rtpenc.c      \
                                            rtp_mpv.c     \
                                            rtp_aac.c     \
                                            rtpenc_h264.c \
                                            avc.c
LOCAL_SRC_FILES-$(CONFIG_RTSP_DEMUXER)              += rtsp.c
LOCAL_SRC_FILES-$(CONFIG_SDP_DEMUXER)               += rtsp.c rtp.c rtpdec.c rtp_h264.c
LOCAL_SRC_FILES-$(CONFIG_SEGAFILM_DEMUXER)          += segafilm.c
LOCAL_SRC_FILES-$(CONFIG_SHORTEN_DEMUXER)           += raw.c
LOCAL_SRC_FILES-$(CONFIG_SIFF_DEMUXER)              += siff.c
LOCAL_SRC_FILES-$(CONFIG_SMACKER_DEMUXER)           += smacker.c
LOCAL_SRC_FILES-$(CONFIG_SOL_DEMUXER)               += sol.c raw.c
LOCAL_SRC_FILES-$(CONFIG_STR_DEMUXER)               += psxstr.c
LOCAL_SRC_FILES-$(CONFIG_SWF_DEMUXER)               += swfdec.c
LOCAL_SRC_FILES-$(CONFIG_SWF_MUXER)                 += swfenc.c
LOCAL_SRC_FILES-$(CONFIG_TG2_MUXER)                 += movenc.c riff.c isom.c avc.c
LOCAL_SRC_FILES-$(CONFIG_TGP_MUXER)                 += movenc.c riff.c isom.c avc.c
LOCAL_SRC_FILES-$(CONFIG_THP_DEMUXER)               += thp.c
LOCAL_SRC_FILES-$(CONFIG_TIERTEXSEQ_DEMUXER)        += tiertexseq.c
LOCAL_SRC_FILES-$(CONFIG_TTA_DEMUXER)               += tta.c
LOCAL_SRC_FILES-$(CONFIG_TXD_DEMUXER)               += txd.c
LOCAL_SRC_FILES-$(CONFIG_VC1_DEMUXER)               += raw.c
LOCAL_SRC_FILES-$(CONFIG_VC1T_DEMUXER)              += vc1test.c
LOCAL_SRC_FILES-$(CONFIG_VC1T_MUXER)                += vc1testenc.c
LOCAL_SRC_FILES-$(CONFIG_VMD_DEMUXER)               += sierravmd.c
LOCAL_SRC_FILES-$(CONFIG_VOC_DEMUXER)               += vocdec.c voc.c
LOCAL_SRC_FILES-$(CONFIG_VOC_MUXER)                 += vocenc.c voc.c
LOCAL_SRC_FILES-$(CONFIG_WAV_DEMUXER)               += wav.c riff.c raw.c
LOCAL_SRC_FILES-$(CONFIG_WAV_MUXER)                 += wav.c riff.c
LOCAL_SRC_FILES-$(CONFIG_WC3_DEMUXER)               += wc3movie.c
LOCAL_SRC_FILES-$(CONFIG_WSAUD_DEMUXER)             += westwood.c
LOCAL_SRC_FILES-$(CONFIG_WSVQA_DEMUXER)             += westwood.c
LOCAL_SRC_FILES-$(CONFIG_WV_DEMUXER)                += wv.c
LOCAL_SRC_FILES-$(CONFIG_XA_DEMUXER)                += xa.c
LOCAL_SRC_FILES-$(CONFIG_YUV4MPEGPIPE_MUXER)        += yuv4mpeg.c
LOCAL_SRC_FILES-$(CONFIG_YUV4MPEGPIPE_DEMUXER)      += yuv4mpeg.c

# external libraries
LOCAL_SRC_FILES-$(CONFIG_LIBNUT_DEMUXER)            += libnut.c riff.c
LOCAL_SRC_FILES-$(CONFIG_LIBNUT_MUXER)              += libnut.c riff.c

LOCAL_SRC_FILES-$(CONFIG_VHOOK)                     += framehook.c


LOCAL_SRC_FILES-$(CONFIG_FILE_PROTOCOL)             += file.c
LOCAL_SRC_FILES-$(CONFIG_HTTP_PROTOCOL)             += http.c
LOCAL_SRC_FILES-$(CONFIG_PIPE_PROTOCOL)             += file.c
LOCAL_SRC_FILES-$(CONFIG_RTP_PROTOCOL)              += rtpproto.c
LOCAL_SRC_FILES-$(CONFIG_TCP_PROTOCOL)              += tcp.c
LOCAL_SRC_FILES-$(CONFIG_UDP_PROTOCOL)              += udp.c

LOCAL_SRC_FILES += avio.c aviobuf.c
LOCAL_SRC_FILES += $(LOCAL_SRC_FILES-yes)

LOCAL_MODULE:= libavformat
LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ \
        external/zlib



include $(BUILD_STATIC_LIBRARY)

