LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

src_files = \
  CharDistribution.cpp    nsCharSetProber.cpp     nsMBCSGroupProber.cpp \
  JpCntx.cpp              nsEUCJPProber.cpp       nsMBCSSM.cpp \
  LangBulgarianModel.cpp  nsEUCKRProber.cpp       nsSBCSGroupProber.cpp \
  LangCyrillicModel.cpp   nsEUCTWProber.cpp       nsSBCharSetProber.cpp \
  LangGreekModel.cpp      nsEscCharsetProber.cpp  nsSJISProber.cpp \
  LangHebrewModel.cpp     nsEscSM.cpp             nsUTF8Prober.cpp \
  LangHungarianModel.cpp  nsGB2312Prober.cpp      nsUniversalDetector.cpp \
  LangThaiModel.cpp       nsHebrewProber.cpp      uchardet.cpp \
  nsBig5Prober.cpp        nsLatin1Prober.cpp

src_dir := $(LOCAL_PATH)/../../src

NDK_TOOLCHAIN_VERSION := clang
LOCAL_C_INCLUDES := \
  $(ANDROID_NDK)/sources/cxx-stl/llvm-libc++/libcxx/include
LOCAL_MODULE := uchardet
LOCAL_SRC_FILES := $(addprefix $(src_dir)/, $(src_files))

include $(BUILD_STATIC_LIBRARY)
