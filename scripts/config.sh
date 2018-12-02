#!/bin/bash

# Copyright 2018 luzidchris, CTrocks All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# Configuration parameters required for setting up the build environment
# and the RTEMS toolchain build.
#

source ./globals.sh

GCC_MAJOR_VER=7
RTEMS_VER=5

# using github.com mirror for now
#RSB_GIT_URL="git://git.rtems.org/rtems-source-builder"
RSB_GIT_URL="https://github.com/RTEMS/rtems-source-builder"

BUILD_STAGE_DIR="build"
INSTALL_BASE_PATH="/opt/rtems"
BUILD_ARGS="--with-ada"





