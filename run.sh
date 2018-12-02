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

# =========================
# Run RTEMS toolchain build
#==========================
#
# Main script/entry point of the build process. Ensures installation of
# required OS packages and sets up GCC before running the actual build
# with RTEMS Source Builder.
#

source scripts/globals.sh
source scripts/config.sh

set -ex

log_msg info "Script started ($0)."

# TARGET_... variables have to be provided additionally. These vars
# are not part of any script within this project
if [ -z "$TARGET_ARCH"]; then
    log_msg err "Mssing TARGET_ARCH! No target architecture specified."
    exit 234
fi
log_msg info "Build target: "$TARGET_ARCH

cd scripts
log_msg info "Updating environment..."
./install_pkgs.sh
log_msg info "Setting up environment..."
./setup_gcc.sh
log_msg info "Running build..."
./run_rsb.sh

log_msg info "Script finished ($0)."

