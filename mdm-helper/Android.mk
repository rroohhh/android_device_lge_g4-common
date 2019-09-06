ifneq (, $(filter arm arm64 aarch64, $(TARGET_ARCH)))

MDM_HELPER_ROOT := $(call my-dir)
include $(MDM_HELPER_ROOT)/mdmfiletransfer/Android.mk

LOCAL_PATH := $(MDM_HELPER_ROOT)

include $(CLEAR_VARS)
LOCAL_LDLIBS := -llog
LOCAL_MODULE := libmdmdetect
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_C_INCLUDES += $(LOCAL_PATH)/libmdmdetect \
		    $(TARGET_OUT_HEADERS)/common/inc/
LOCAL_SRC_FILES += $(call all-c-files-under, libmdmdetect)
LOCAL_COPY_HEADERS_TO := libmdmdetect/inc
LOCAL_COPY_HEADERS := libmdmdetect/mdm_detect.h
LOCAL_SHARED_LIBRARIES += libcutils libutils
LOCAL_MODULE_TAG := optional
LOCAL_CFLAGS += -Wall
LOCAL_MODULE_OWNER := qcom
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

$(warning building libmdmdetect)
endif # TARGET_ARCH
