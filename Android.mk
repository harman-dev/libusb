# OpenNI 2.x Android makefile.
# Copyright (C) 2012 PrimeSense Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ***
# *** Note: This module will only get built if compiled via the NDK! ***
# ***


LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# Sources
LOCAL_SRC_FILES:= \
                  libusb/core.c \
                  libusb/descriptor.c \
                  libusb/io.c \
                  libusb/sync.c \
		  libusb/hotplug.c \
		  libusb/strerror.c \
		  libusb/os/poll_posix.c \
		  libusb/os/linux_netlink.c \
                  libusb/os/linux_usbfs.c \
                  libusb/os/threads_posix.c


# Includes
LOCAL_C_INCLUDES += \
$(LOCAL_PATH)/ \
$(LOCAL_PATH)/libusb/ \
$(LOCAL_PATH)/libusb/os
LOCAL_SHARED_LIBRARIES := libc

LOCAL_CFLAGS += -DLIBUSB_DESCRIBE=""
# Output
LOCAL_MODULE:= libusb
LOCAL_MODULE_TAGS:= debug
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

# Sources
LOCAL_SRC_FILES:= \
                  libusb/core.c \
                  libusb/descriptor.c \
                  libusb/io.c \
                  libusb/sync.c \
		  libusb/hotplug.c \
		  libusb/strerror.c \
		  libusb/os/poll_posix.c \
		  libusb/os/linux_netlink.c \
                  libusb/os/linux_usbfs.c \
                  libusb/os/threads_posix.c


# Includes
LOCAL_C_INCLUDES += \
$(LOCAL_PATH)/ \
$(LOCAL_PATH)/libusb/ \
$(LOCAL_PATH)/libusb/os
LOCAL_STATIC_LIBRARIES := libc

LOCAL_CFLAGS += -DLIBUSB_DESCRIBE=""
# Output
LOCAL_MODULE:= libusb_static
LOCAL_MODULE_TAGS:= debug
include $(BUILD_STATIC_LIBRARY)
