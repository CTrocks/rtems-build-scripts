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
source ./config.sh

log_msg info "Script started ($0)."

BUILD_STAGE_PATH="../$BUILD_STAGE_DIR"
RSB_DIR="rsb"

log_msg info "Preparing build stage..."
# ensure that build stage directory exists
[ -d "$BUILD_STAGE_PATH" ] || mkdir -p $BUILD_STAGE_PATH

# enter build stage and check if RSB is already present
# if not, then fetch it from git
log_msg info "Preparing RTEMS Source Builder..."
cd $BUILD_STAGE_PATH
[ -d "$RSB_DIR" ] || git clone $RSB_GIT_URL $RSB_DIR

# enter RSB and run build
log_msg info "Starting build now..."
cd $RSB_DIR/rtems
../sb-set-builder \
    --prefix=$INSTALL_DIR/$RTEMS_VER \
    $RTEMS_VER/rtems-$TARGET_ARCH \
    $BUILD_ARGS

log_msg info "Script finished ($0)."