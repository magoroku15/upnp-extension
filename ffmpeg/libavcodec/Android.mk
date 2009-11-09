LOCAL_PATH:= $(call my-dir)
#TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	allcodecs.c \
	audioconvert.c \
	bitstream.c \
	bitstream_filter.c \
	dsputil.c \
	eval.c \
	faanidct.c \
	imgconvert.c \
	jrevdct.c \
	opt.c \
	parser.c \
	raw.c \
	resample.c \
	resample2.c \
	simple_idct.c \
	utils.c \

#	imgresample.c

include $(LOCAL_PATH)/../config.mak

LOCAL_SRC_FILES-yes :=""
LOCAL_SRC_FILES-$(CONFIG_ENCODERS)                += faandct.c jfdctfst.c jfdctint.c

LOCAL_SRC_FILES-$(CONFIG_AASC_DECODER)            += aasc.c
LOCAL_SRC_FILES-$(CONFIG_AC3_DECODER)             += ac3dec.c ac3tab.c ac3dec_data.c ac3.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_AC3_ENCODER)             += ac3enc.c ac3tab.c ac3.c
LOCAL_SRC_FILES-$(CONFIG_ALAC_DECODER)            += alac.c
LOCAL_SRC_FILES-$(CONFIG_AMV_DECODER)             += sp5xdec.c mjpegdec.c mjpeg.c
LOCAL_SRC_FILES-$(CONFIG_APE_DECODER)             += apedec.c
LOCAL_SRC_FILES-$(CONFIG_ASV1_DECODER)            += asv1.c mpeg12data.c
LOCAL_SRC_FILES-$(CONFIG_ASV1_ENCODER)            += asv1.c mpeg12data.c
LOCAL_SRC_FILES-$(CONFIG_ASV2_DECODER)            += asv1.c mpeg12data.c
LOCAL_SRC_FILES-$(CONFIG_ASV2_ENCODER)            += asv1.c mpeg12data.c
LOCAL_SRC_FILES-$(CONFIG_ATRAC3_DECODER)          += atrac3.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_AVS_DECODER)             += avs.c
LOCAL_SRC_FILES-$(CONFIG_BETHSOFTVID_DECODER)     += bethsoftvideo.c
LOCAL_SRC_FILES-$(CONFIG_BFI_DECODER)             += bfi.c
LOCAL_SRC_FILES-$(CONFIG_BMP_DECODER)             += bmp.c
LOCAL_SRC_FILES-$(CONFIG_BMP_ENCODER)             += bmpenc.c
LOCAL_SRC_FILES-$(CONFIG_C93_DECODER)             += c93.c
LOCAL_SRC_FILES-$(CONFIG_CAVS_DECODER)            += cavs.c cavsdec.c cavsdsp.c golomb.c mpeg12data.c mpegvideo.c
LOCAL_SRC_FILES-$(CONFIG_CINEPAK_DECODER)         += cinepak.c
LOCAL_SRC_FILES-$(CONFIG_CLJR_DECODER)            += cljr.c
LOCAL_SRC_FILES-$(CONFIG_CLJR_ENCODER)            += cljr.c
LOCAL_SRC_FILES-$(CONFIG_COOK_DECODER)            += cook.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_CSCD_DECODER)            += cscd.c
LOCAL_SRC_FILES-$(CONFIG_CYUV_DECODER)            += cyuv.c
LOCAL_SRC_FILES-$(CONFIG_DCA_DECODER)             += dca.c
LOCAL_SRC_FILES-$(CONFIG_DNXHD_DECODER)           += dnxhddec.c dnxhddata.c
LOCAL_SRC_FILES-$(CONFIG_DNXHD_ENCODER)           += dnxhdenc.c dnxhddata.c mpegvideo_enc.c motion_est.c ratecontrol.c mpeg12data.c mpegvideo.c
LOCAL_SRC_FILES-$(CONFIG_DSICINAUDIO_DECODER)     += dsicinav.c
LOCAL_SRC_FILES-$(CONFIG_DSICINVIDEO_DECODER)     += dsicinav.c
LOCAL_SRC_FILES-$(CONFIG_DVBSUB_DECODER)          += dvbsubdec.c
LOCAL_SRC_FILES-$(CONFIG_DVBSUB_ENCODER)          += dvbsub.c
LOCAL_SRC_FILES-$(CONFIG_DVDSUB_DECODER)          += dvdsubdec.c
LOCAL_SRC_FILES-$(CONFIG_DVDSUB_ENCODER)          += dvdsubenc.c
LOCAL_SRC_FILES-$(CONFIG_DVVIDEO_DECODER)         += dv.c
LOCAL_SRC_FILES-$(CONFIG_DVVIDEO_ENCODER)         += dv.c
LOCAL_SRC_FILES-$(CONFIG_DXA_DECODER)             += dxa.c
LOCAL_SRC_FILES-$(CONFIG_EACMV_DECODER)           += eacmv.c
LOCAL_SRC_FILES-$(CONFIG_EIGHTBPS_DECODER)        += 8bps.c
LOCAL_SRC_FILES-$(CONFIG_EIGHTSVX_EXP_DECODER)    += 8svx.c
LOCAL_SRC_FILES-$(CONFIG_EIGHTSVX_FIB_DECODER)    += 8svx.c
LOCAL_SRC_FILES-$(CONFIG_ESCAPE124_DECODER)       += escape124.c
LOCAL_SRC_FILES-$(CONFIG_FFV1_DECODER)            += ffv1.c rangecoder.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_FFV1_ENCODER)            += ffv1.c rangecoder.c
LOCAL_SRC_FILES-$(CONFIG_FFVHUFF_DECODER)         += huffyuv.c
LOCAL_SRC_FILES-$(CONFIG_FFVHUFF_ENCODER)         += huffyuv.c
LOCAL_SRC_FILES-$(CONFIG_FLAC_DECODER)            += flac.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_FLAC_ENCODER)            += flacenc.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_FLASHSV_DECODER)         += flashsv.c
LOCAL_SRC_FILES-$(CONFIG_FLASHSV_ENCODER)         += flashsvenc.c
LOCAL_SRC_FILES-$(CONFIG_FLIC_DECODER)            += flicvideo.c
LOCAL_SRC_FILES-$(CONFIG_FLV_DECODER)             += h263dec.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_FLV_ENCODER)             += mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_FOURXM_DECODER)          += 4xm.c
LOCAL_SRC_FILES-$(CONFIG_FRAPS_DECODER)           += fraps.c huffman.c
LOCAL_SRC_FILES-$(CONFIG_GIF_DECODER)             += gifdec.c lzw.c
LOCAL_SRC_FILES-$(CONFIG_GIF_ENCODER)             += gif.c
LOCAL_SRC_FILES-$(CONFIG_H261_DECODER)            += h261dec.c h261.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_H261_ENCODER)            += h261enc.c h261.c mpegvideo_enc.c motion_est.c ratecontrol.c mpeg12data.c mpegvideo.c
LOCAL_SRC_FILES-$(CONFIG_H263_DECODER)            += h263dec.c h263.c h263_parser.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_H263I_DECODER)           += h263dec.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_H263_ENCODER)            += mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_H263P_ENCODER)           += mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_H264_DECODER)            += h264.c h264idct.c h264pred.c h264_parser.c cabac.c golomb.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_H264_ENCODER)            += h264enc.c h264dspenc.c
LOCAL_SRC_FILES-$(CONFIG_HUFFYUV_DECODER)         += huffyuv.c
LOCAL_SRC_FILES-$(CONFIG_HUFFYUV_ENCODER)         += huffyuv.c
LOCAL_SRC_FILES-$(CONFIG_IDCIN_DECODER)           += idcinvideo.c
LOCAL_SRC_FILES-$(CONFIG_IMC_DECODER)             += imc.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_INDEO2_DECODER)          += indeo2.c
LOCAL_SRC_FILES-$(CONFIG_INDEO3_DECODER)          += indeo3.c
LOCAL_SRC_FILES-$(CONFIG_INTERPLAY_DPCM_DECODER)  += dpcm.c
LOCAL_SRC_FILES-$(CONFIG_INTERPLAY_VIDEO_DECODER) += interplayvideo.c
LOCAL_SRC_FILES-$(CONFIG_JPEGLS_DECODER)          += jpeglsdec.c jpegls.c mjpegdec.c mjpeg.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_JPEGLS_ENCODER)          += jpeglsenc.c jpegls.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_KMVC_DECODER)            += kmvc.c
LOCAL_SRC_FILES-$(CONFIG_LJPEG_ENCODER)           += ljpegenc.c mjpegenc.c mjpeg.c mpegvideo_enc.c motion_est.c ratecontrol.c mpeg12data.c mpegvideo.c
LOCAL_SRC_FILES-$(CONFIG_LOCO_DECODER)            += loco.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_MACE3_DECODER)           += mace.c
LOCAL_SRC_FILES-$(CONFIG_MACE6_DECODER)           += mace.c
LOCAL_SRC_FILES-$(CONFIG_MIMIC_DECODER)           += mimic.c
LOCAL_SRC_FILES-$(CONFIG_MJPEG_DECODER)           += mjpegdec.c mjpeg.c
LOCAL_SRC_FILES-$(CONFIG_MJPEG_ENCODER)           += mjpegenc.c mjpeg.c mpegvideo_enc.c motion_est.c ratecontrol.c mpeg12data.c mpegvideo.c
LOCAL_SRC_FILES-$(CONFIG_MJPEGB_DECODER)          += mjpegbdec.c mjpegdec.c mjpeg.c
LOCAL_SRC_FILES-$(CONFIG_MLP_DECODER)             += mlpdec.c
LOCAL_SRC_FILES-$(CONFIG_MMVIDEO_DECODER)         += mmvideo.c
LOCAL_SRC_FILES-$(CONFIG_MOTIONPIXELS_DECODER)    += motionpixels.c
LOCAL_SRC_FILES-$(CONFIG_MP2_DECODER)             += mpegaudiodec.c mpegaudiodecheader.c mpegaudio.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_MP2_ENCODER)             += mpegaudioenc.c mpegaudio.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_MP3_DECODER)             += mpegaudiodec.c mpegaudiodecheader.c mpegaudio.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_MP3ADU_DECODER)          += mpegaudiodec.c mpegaudiodecheader.c mpegaudio.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_MP3ON4_DECODER)          += mpegaudiodec.c mpegaudiodecheader.c mpegaudio.c mpegaudiodata.c mpeg4audio.c
LOCAL_SRC_FILES-$(CONFIG_MPC7_DECODER)            += mpc7.c mpc.c mpegaudiodec.c mpegaudiodecheader.c mpegaudio.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_MPC8_DECODER)            += mpc8.c mpc.c mpegaudiodec.c mpegaudiodecheader.c mpegaudio.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_MDEC_DECODER)            += mpeg12.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MPEGVIDEO_DECODER)       += mpeg12.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MPEG1VIDEO_DECODER)      += mpeg12.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MPEG1VIDEO_ENCODER)      += mpeg12enc.c mpeg12data.c mpegvideo_enc.c motion_est.c ratecontrol.c mpeg12.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MPEG2VIDEO_DECODER)      += mpeg12.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MPEG2VIDEO_ENCODER)      += mpeg12enc.c mpeg12data.c mpegvideo_enc.c motion_est.c ratecontrol.c mpeg12.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MPEG4_DECODER)           += h263dec.c h263.c mpeg4video_parser.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MPEG4_ENCODER)           += mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MSMPEG4V1_DECODER)       += msmpeg4.c msmpeg4data.c h263dec.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MSMPEG4V1_ENCODER)       += msmpeg4.c msmpeg4data.c mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MSMPEG4V2_DECODER)       += msmpeg4.c msmpeg4data.c h263dec.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MSMPEG4V2_ENCODER)       += msmpeg4.c msmpeg4data.c mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MSMPEG4V3_DECODER)       += msmpeg4.c msmpeg4data.c h263dec.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MSMPEG4V3_ENCODER)       += msmpeg4.c msmpeg4data.c mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MSRLE_DECODER)           += msrle.c
LOCAL_SRC_FILES-$(CONFIG_MSVIDEO1_DECODER)        += msvideo1.c
LOCAL_SRC_FILES-$(CONFIG_MSZH_DECODER)            += lcldec.c
LOCAL_SRC_FILES-$(CONFIG_NELLYMOSER_DECODER)      += nellymoserdec.c nellymoser.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_NUV_DECODER)             += nuv.c rtjpeg.c
LOCAL_SRC_FILES-$(CONFIG_PAM_ENCODER)             += pnmenc.c pnm.c
LOCAL_SRC_FILES-$(CONFIG_PBM_ENCODER)             += pnmenc.c pnm.c
LOCAL_SRC_FILES-$(CONFIG_PCX_DECODER)             += pcx.c
LOCAL_SRC_FILES-$(CONFIG_PGM_ENCODER)             += pnmenc.c pnm.c
LOCAL_SRC_FILES-$(CONFIG_PGMYUV_ENCODER)          += pnmenc.c pnm.c
LOCAL_SRC_FILES-$(CONFIG_PNG_DECODER)             += png.c pngdec.c
LOCAL_SRC_FILES-$(CONFIG_PNG_ENCODER)             += png.c pngenc.c
LOCAL_SRC_FILES-$(CONFIG_PPM_ENCODER)             += pnmenc.c pnm.c
LOCAL_SRC_FILES-$(CONFIG_PTX_DECODER)             += ptx.c
LOCAL_SRC_FILES-$(CONFIG_QDM2_DECODER)            += qdm2.c mdct.c fft.c mpegaudiodec.c mpegaudiodecheader.c mpegaudio.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_QDRAW_DECODER)           += qdrw.c
LOCAL_SRC_FILES-$(CONFIG_QPEG_DECODER)            += qpeg.c
LOCAL_SRC_FILES-$(CONFIG_QTRLE_DECODER)           += qtrle.c
LOCAL_SRC_FILES-$(CONFIG_QTRLE_ENCODER)           += qtrleenc.c
LOCAL_SRC_FILES-$(CONFIG_RA_144_DECODER)          += ra144.c acelp_filters.c
LOCAL_SRC_FILES-$(CONFIG_RA_288_DECODER)          += ra288.c
LOCAL_SRC_FILES-$(CONFIG_RAWVIDEO_DECODER)        += rawdec.c
LOCAL_SRC_FILES-$(CONFIG_RAWVIDEO_ENCODER)        += rawenc.c
LOCAL_SRC_FILES-$(CONFIG_RL2_DECODER)             += rl2.c
LOCAL_SRC_FILES-$(CONFIG_ROQ_DECODER)             += roqvideodec.c roqvideo.c
LOCAL_SRC_FILES-$(CONFIG_ROQ_ENCODER)             += roqvideoenc.c roqvideo.c elbg.c
LOCAL_SRC_FILES-$(CONFIG_ROQ_DPCM_DECODER)        += dpcm.c
LOCAL_SRC_FILES-$(CONFIG_ROQ_DPCM_ENCODER)        += roqaudioenc.c
LOCAL_SRC_FILES-$(CONFIG_RPZA_DECODER)            += rpza.c
LOCAL_SRC_FILES-$(CONFIG_RV10_DECODER)            += rv10.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_RV10_ENCODER)            += rv10.c mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_RV20_DECODER)            += rv10.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_RV20_ENCODER)            += rv10.c mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_SGI_DECODER)             += sgidec.c
LOCAL_SRC_FILES-$(CONFIG_SGI_ENCODER)             += sgienc.c rle.c
LOCAL_SRC_FILES-$(CONFIG_SHORTEN_DECODER)         += shorten.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_SMACKAUD_DECODER)        += smacker.c
LOCAL_SRC_FILES-$(CONFIG_SMACKER_DECODER)         += smacker.c
LOCAL_SRC_FILES-$(CONFIG_SMC_DECODER)             += smc.c
LOCAL_SRC_FILES-$(CONFIG_SNOW_DECODER)            += snow.c rangecoder.c
LOCAL_SRC_FILES-$(CONFIG_SNOW_ENCODER)            += snow.c rangecoder.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_SOL_DPCM_DECODER)        += dpcm.c
LOCAL_SRC_FILES-$(CONFIG_SONIC_DECODER)           += sonic.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_SONIC_ENCODER)           += sonic.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_SONIC_LS_ENCODER)        += sonic.c golomb.c
LOCAL_SRC_FILES-$(CONFIG_SP5X_DECODER)            += sp5xdec.c mjpegdec.c mjpeg.c
LOCAL_SRC_FILES-$(CONFIG_SUNRAST_DECODER)         += sunrast.c
LOCAL_SRC_FILES-$(CONFIG_SVQ1_DECODER)            += svq1dec.c svq1.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_SVQ1_ENCODER)            += svq1enc.c svq1.c motion_est.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_SVQ3_DECODER)            += h264.c h264idct.c h264pred.c h264_parser.c cabac.c golomb.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_TARGA_DECODER)           += targa.c
LOCAL_SRC_FILES-$(CONFIG_TARGA_ENCODER)           += targaenc.c rle.c
LOCAL_SRC_FILES-$(CONFIG_THEORA_DECODER)          += vp3.c xiph.c vp3dsp.c
LOCAL_SRC_FILES-$(CONFIG_THP_DECODER)             += mjpegdec.c mjpeg.c
LOCAL_SRC_FILES-$(CONFIG_TIERTEXSEQVIDEO_DECODER) += tiertexseqv.c
LOCAL_SRC_FILES-$(CONFIG_TIFF_DECODER)            += tiff.c lzw.c
LOCAL_SRC_FILES-$(CONFIG_TIFF_ENCODER)            += tiffenc.c rle.c lzwenc.c
LOCAL_SRC_FILES-$(CONFIG_TRUEMOTION1_DECODER)     += truemotion1.c
LOCAL_SRC_FILES-$(CONFIG_TRUEMOTION2_DECODER)     += truemotion2.c
LOCAL_SRC_FILES-$(CONFIG_TRUESPEECH_DECODER)      += truespeech.c
LOCAL_SRC_FILES-$(CONFIG_TSCC_DECODER)            += tscc.c
LOCAL_SRC_FILES-$(CONFIG_TTA_DECODER)             += tta.c
LOCAL_SRC_FILES-$(CONFIG_TXD_DECODER)             += txd.c s3tc.c
LOCAL_SRC_FILES-$(CONFIG_ULTI_DECODER)            += ulti.c
LOCAL_SRC_FILES-$(CONFIG_VB_DECODER)              += vb.c
LOCAL_SRC_FILES-$(CONFIG_VC1_DECODER)             += vc1.c vc1data.c vc1dsp.c msmpeg4data.c h263dec.c h263.c intrax8.c intrax8dsp.c error_resilience.c mpegvideo.c
LOCAL_SRC_FILES-$(CONFIG_VCR1_DECODER)            += vcr1.c
LOCAL_SRC_FILES-$(CONFIG_VCR1_ENCODER)            += vcr1.c
LOCAL_SRC_FILES-$(CONFIG_VMDAUDIO_DECODER)        += vmdav.c
LOCAL_SRC_FILES-$(CONFIG_VMDVIDEO_DECODER)        += vmdav.c
LOCAL_SRC_FILES-$(CONFIG_VMNC_DECODER)            += vmnc.c
LOCAL_SRC_FILES-$(CONFIG_VORBIS_DECODER)          += vorbis_dec.c vorbis.c vorbis_data.c xiph.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_VORBIS_ENCODER)          += vorbis_enc.c vorbis.c vorbis_data.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_VP3_DECODER)             += vp3.c vp3dsp.c
LOCAL_SRC_FILES-$(CONFIG_VP5_DECODER)             += vp5.c vp56.c vp56data.c vp3dsp.c
LOCAL_SRC_FILES-$(CONFIG_VP6_DECODER)             += vp6.c vp56.c vp56data.c vp3dsp.c huffman.c
LOCAL_SRC_FILES-$(CONFIG_VP6A_DECODER)            += vp6.c vp56.c vp56data.c vp3dsp.c huffman.c
LOCAL_SRC_FILES-$(CONFIG_VP6F_DECODER)            += vp6.c vp56.c vp56data.c vp3dsp.c huffman.c
LOCAL_SRC_FILES-$(CONFIG_VQA_DECODER)             += vqavideo.c
LOCAL_SRC_FILES-$(CONFIG_WAVPACK_DECODER)         += wavpack.c
LOCAL_SRC_FILES-$(CONFIG_WMAV1_DECODER)           += wmadec.c wma.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_WMAV1_ENCODER)           += wmaenc.c wma.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_WMAV2_DECODER)           += wmadec.c wma.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_WMAV2_ENCODER)           += wmaenc.c wma.c mdct.c fft.c
LOCAL_SRC_FILES-$(CONFIG_WMV1_DECODER)            += h263dec.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_WMV1_ENCODER)            += mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_WMV2_DECODER)            += wmv2dec.c wmv2.c msmpeg4.c msmpeg4data.c h263dec.c h263.c intrax8.c intrax8dsp.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_WMV2_ENCODER)            += wmv2enc.c wmv2.c msmpeg4.c msmpeg4data.c mpegvideo_enc.c motion_est.c ratecontrol.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_WMV3_DECODER)            += vc1.c vc1data.c vc1dsp.c msmpeg4data.c h263dec.c h263.c intrax8.c intrax8dsp.c error_resilience.c mpegvideo.c
LOCAL_SRC_FILES-$(CONFIG_WNV1_DECODER)            += wnv1.c
LOCAL_SRC_FILES-$(CONFIG_WS_SND1_DECODER)         += ws-snd1.c
LOCAL_SRC_FILES-$(CONFIG_XAN_DPCM_DECODER)        += dpcm.c
LOCAL_SRC_FILES-$(CONFIG_XAN_WC3_DECODER)         += xan.c
LOCAL_SRC_FILES-$(CONFIG_XAN_WC4_DECODER)         += xan.c
LOCAL_SRC_FILES-$(CONFIG_XL_DECODER)              += xl.c
LOCAL_SRC_FILES-$(CONFIG_XSUB_DECODER)            += xsubdec.c
LOCAL_SRC_FILES-$(CONFIG_ZLIB_DECODER)            += lcldec.c
LOCAL_SRC_FILES-$(CONFIG_ZLIB_ENCODER)            += lclenc.c
LOCAL_SRC_FILES-$(CONFIG_ZMBV_DECODER)            += zmbv.c
LOCAL_SRC_FILES-$(CONFIG_ZMBV_ENCODER)            += zmbvenc.c

LOCAL_SRC_FILES-$(CONFIG_PCM_ALAW_DECODER)           += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_ALAW_ENCODER)           += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_DVD_DECODER)            += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_DVD_ENCODER)            += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_MULAW_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_MULAW_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S8_DECODER)             += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S8_ENCODER)             += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16BE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16BE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16LE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16LE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S16LE_PLANAR_DECODER)   += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S24BE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S24BE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S24DAUD_DECODER)        += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S24DAUD_ENCODER)        += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S24LE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S24LE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S32BE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S32BE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S32LE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_S32LE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U8_DECODER)             += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U8_ENCODER)             += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U16BE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U16BE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U16LE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U16LE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U24BE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U24BE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U24LE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U24LE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U32BE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U32BE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U32LE_DECODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_U32LE_ENCODER)          += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_ZORK_DECODER)           += pcm.c
LOCAL_SRC_FILES-$(CONFIG_PCM_ZORK_ENCODER)           += pcm.c

LOCAL_SRC_FILES-$(CONFIG_ADPCM_4XM_DECODER)          += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_ADX_DECODER)          += adxdec.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_ADX_ENCODER)          += adxenc.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_CT_DECODER)           += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_EA_DECODER)           += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_EA_MAXIS_XA_DECODER)  += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_EA_R1_DECODER)        += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_EA_R2_DECODER)        += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_EA_R3_DECODER)        += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_EA_XAS_DECODER)       += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_G726_DECODER)         += g726.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_G726_ENCODER)         += g726.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_AMV_DECODER)      += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_DK3_DECODER)      += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_DK4_DECODER)      += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_EA_EACS_DECODER)  += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_EA_SEAD_DECODER)  += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_QT_DECODER)       += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_QT_ENCODER)       += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_SMJPEG_DECODER)   += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_WAV_DECODER)      += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_WAV_ENCODER)      += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_IMA_WS_DECODER)       += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_MS_DECODER)           += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_MS_ENCODER)           += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_SBPRO_2_DECODER)      += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_SBPRO_3_DECODER)      += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_SBPRO_4_DECODER)      += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_SWF_DECODER)          += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_SWF_ENCODER)          += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_THP_DECODER)          += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_XA_DECODER)           += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_YAMAHA_DECODER)       += adpcm.c
LOCAL_SRC_FILES-$(CONFIG_ADPCM_YAMAHA_ENCODER)       += adpcm.c

# libavformat dependencies
LOCAL_SRC_FILES-$(CONFIG_GXF_DEMUXER)             += mpeg12data.c
LOCAL_SRC_FILES-$(CONFIG_MATROSKA_AUDIO_MUXER)    += xiph.c mpeg4audio.c
LOCAL_SRC_FILES-$(CONFIG_MATROSKA_DEMUXER)        += mpeg4audio.c
LOCAL_SRC_FILES-$(CONFIG_MATROSKA_MUXER)          += xiph.c mpeg4audio.c
LOCAL_SRC_FILES-$(CONFIG_MOV_DEMUXER)             += mpeg4audio.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_NUT_MUXER)               += mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_OGG_MUXER)               += xiph.c
LOCAL_SRC_FILES-$(CONFIG_RTP_MUXER)               += mpegvideo.c

# external codec libraries
LOCAL_SRC_FILES-$(CONFIG_LIBA52)                  += liba52.c
LOCAL_SRC_FILES-$(CONFIG_LIBAMR_NB)               += libamr.c
LOCAL_SRC_FILES-$(CONFIG_LIBAMR_WB)               += libamr.c
LOCAL_SRC_FILES-$(CONFIG_LIBDIRAC_DECODER)        += libdiracdec.c
LOCAL_SRC_FILES-$(CONFIG_LIBDIRAC_ENCODER)        += libdiracenc.c libdirac_libschro.c
LOCAL_SRC_FILES-$(CONFIG_LIBFAAC)                 += libfaac.c
LOCAL_SRC_FILES-$(CONFIG_LIBFAAD)                 += libfaad.c
LOCAL_SRC_FILES-$(CONFIG_LIBGSM)                  += libgsm.c
LOCAL_SRC_FILES-$(CONFIG_LIBMP3LAME)              += libmp3lame.c
LOCAL_SRC_FILES-$(CONFIG_LIBSCHROEDINGER_DECODER) += libschroedingerdec.c libschroedinger.c libdirac_libschro.c
LOCAL_SRC_FILES-$(CONFIG_LIBSCHROEDINGER_ENCODER) += libschroedingerenc.c libschroedinger.c libdirac_libschro.c
LOCAL_SRC_FILES-$(CONFIG_LIBTHEORA)               += libtheoraenc.c
LOCAL_SRC_FILES-$(CONFIG_LIBVORBIS)               += libvorbis.c
LOCAL_SRC_FILES-$(CONFIG_LIBX264)                 += libx264.c
LOCAL_SRC_FILES-$(CONFIG_LIBXVID)                 += libxvidff.c libxvid_rc.c


LOCAL_SRC_FILES-$(CONFIG_AAC_PARSER)              += aac_parser.c aac_ac3_parser.c mpeg4audio.c
LOCAL_SRC_FILES-$(CONFIG_AC3_PARSER)              += ac3_parser.c ac3tab.c aac_ac3_parser.c
LOCAL_SRC_FILES-$(CONFIG_CAVSVIDEO_PARSER)        += cavs_parser.c
LOCAL_SRC_FILES-$(CONFIG_DCA_PARSER)              += dca_parser.c
LOCAL_SRC_FILES-$(CONFIG_DIRAC_PARSER)            += dirac_parser.c
LOCAL_SRC_FILES-$(CONFIG_DVBSUB_PARSER)           += dvbsub_parser.c
LOCAL_SRC_FILES-$(CONFIG_DVDSUB_PARSER)           += dvdsub_parser.c
LOCAL_SRC_FILES-$(CONFIG_H261_PARSER)             += h261_parser.c
LOCAL_SRC_FILES-$(CONFIG_H263_PARSER)             += h263_parser.c
LOCAL_SRC_FILES-$(CONFIG_H264_PARSER)             += h264_parser.c
LOCAL_SRC_FILES-$(CONFIG_MJPEG_PARSER)            += mjpeg_parser.c
LOCAL_SRC_FILES-$(CONFIG_MLP_PARSER)              += mlp_parser.c
LOCAL_SRC_FILES-$(CONFIG_MPEG4VIDEO_PARSER)       += mpeg4video_parser.c h263.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_MPEGAUDIO_PARSER)        += mpegaudio_parser.c mpegaudiodecheader.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_MPEGVIDEO_PARSER)        += mpegvideo_parser.c mpeg12.c mpeg12data.c mpegvideo.c error_resilience.c
LOCAL_SRC_FILES-$(CONFIG_PNM_PARSER)              += pnm_parser.c pnm.c
LOCAL_SRC_FILES-$(CONFIG_VC1_PARSER)              += vc1_parser.c
LOCAL_SRC_FILES-$(CONFIG_VP3_PARSER)              += vp3_parser.c

LOCAL_SRC_FILES-$(CONFIG_DUMP_EXTRADATA_BSF)         += dump_extradata_bsf.c
LOCAL_SRC_FILES-$(CONFIG_H264_MP4TOANNEXB_BSF)       += h264_mp4toannexb_bsf.c
LOCAL_SRC_FILES-$(CONFIG_IMX_DUMP_HEADER_BSF)        += imx_dump_header_bsf.c
LOCAL_SRC_FILES-$(CONFIG_MJPEGA_DUMP_HEADER_BSF)     += mjpega_dump_header_bsf.c
LOCAL_SRC_FILES-$(CONFIG_MOV2TEXTSUB_BSF)            += movsub_bsf.c
LOCAL_SRC_FILES-$(CONFIG_MP3_HEADER_COMPRESS_BSF)    += mp3_header_compress_bsf.c
LOCAL_SRC_FILES-$(CONFIG_MP3_HEADER_DECOMPRESS_BSF)  += mp3_header_decompress_bsf.c mpegaudiodata.c
LOCAL_SRC_FILES-$(CONFIG_NOISE_BSF)                  += noise_bsf.c
LOCAL_SRC_FILES-$(CONFIG_REMOVE_EXTRADATA_BSF)       += remove_extradata_bsf.c
LOCAL_SRC_FILES-$(CONFIG_TEXT2MOVSUB_BSF)            += movsub_bsf.c

LOCAL_SRC_FILES-$(HAVE_BEOSTHREADS)               += beosthread.c
LOCAL_SRC_FILES-$(HAVE_OS2THREADS)                += os2thread.c
LOCAL_SRC_FILES-$(HAVE_PTHREADS)                  += pthread.c
LOCAL_SRC_FILES-$(HAVE_W32THREADS)                += w32thread.c

LOCAL_SRC_FILES-$(HAVE_XVMC)                      += xvmcvideo.c

LOCAL_SRC_FILES += $(LOCAL_SRC_FILES-yes)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ \
        external/zlib

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  -D_THREAD_SAFE -DDEBUG -DHAVE_AV_CONFIG_H


LOCAL_MODULE:= libavcodec

include $(BUILD_STATIC_LIBRARY)

