#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH:= $(call my-dir)

copy_files :=

# add your file here (as target) and place the file in theirs directories
# here is an example
# PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/etcs:$(DEST_ETC_PATH_system)

$(foreach file, $(patsubst $(LOCAL_PATH)/%, %, $(shell find $(LOCAL_PATH) -type f)), \
    $(eval copy_files += $(LOCAL_PATH)/$(file):$(dir $(DEST_ETC_PATH_system)/$(file))))

$(call hct-smart-copy-file-to-target, $(copy_files))

