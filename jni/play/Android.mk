LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := player

SDL_PATH := ../SDL
FFMPEG_PATH := ../ffmpeg
OPENAL_PATH := ../OpenAL

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/CCAV
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(SDL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(FFMPEG_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(OPENAL_PATH)/include

# Add your application source files here...
LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.c test1.cpp native.cpp AudioOutputOpenAL.cpp compat_common.cpp decode_audio.cpp decode_video.cpp display.cpp master_clock.cpp master_decode.cpp master_demuxer.cpp master_demuxer_thread.cpp master_image_converter.cpp master_image_converter_ffmpeg.cpp master_output.cpp master_packet.cpp master_packet_frame.cpp master_player.cpp master_thread.cpp output_audio.cpp thread_audio.cpp thread_video.cpp video_renderer.cpp

LOCAL_SHARED_LIBRARIES := SDL2 avcodec avfilter avformat avutil swresample swscale openal

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog
LOCAL_LDLIBS += -L$(LOCAL_PATH)/$(FFMPEG_PATH)/libs/libswresample.so
LOCAL_CPPFLAGS += -std=c++11
LOCAL_CPPFLAGS += -D__cplusplus=201103L
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avcodec
NDK_MODULE_PATH := $(LOCAL_PATH)
LOCAL_SRC_FILES := $(FFMPEG_PATH)/libs/libavcodec.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avformat
NDK_MODULE_PATH := $(LOCAL_PATH)
LOCAL_SRC_FILES := $(FFMPEG_PATH)/libs/libavformat.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avfilter
NDK_MODULE_PATH := $(LOCAL_PATH)
LOCAL_SRC_FILES := $(FFMPEG_PATH)/libs/libavfilter.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avutil
NDK_MODULE_PATH := $(LOCAL_PATH)
LOCAL_SRC_FILES := $(FFMPEG_PATH)/libs/libavutil.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swresample
NDK_MODULE_PATH := $(LOCAL_PATH)
LOCAL_SRC_FILES := $(FFMPEG_PATH)/libs/libswresample.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swscale
NDK_MODULE_PATH := $(LOCAL_PATH)
LOCAL_SRC_FILES := $(FFMPEG_PATH)/libs/libswscale.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := openal
NDK_MODULE_PATH := $(LOCAL_PATH)
LOCAL_SRC_FILES := $(OPENAL_PATH)/lib/libopenal.so
include $(PREBUILT_SHARED_LIBRARY)