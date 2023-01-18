LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := libaddjni
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_SRC_FILES := $(call all-cpp-files-under, ./)
# All of the shared libraries we link against.
LOCAL_LDLIBS := -pthread
LOCAL_CFLAGS := -Wall -Werror -Wextra -Wno-unused-parameter -Wno-return-type -Wno-unused-variable -Wno-unused-function
include $(BUILD_SHARED_LIBRARY)