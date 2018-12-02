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

# ===============================
# Activate required GCC version
# ===============================
#
# This script can be used to setup GCC-7 and it's components on the
# build machine. GCC-7 has been selected since it matches the RTEMS
# Source Builder target GCC 
#
# ==========
# ATTENTION
# ==========
# Since Ada should be supported, it's very important not to use different
# versions of native GCC and the desired RTEMS cross-compiler!
#
# The script has only been tested on Ubuntu 18.04 Bionic yet.
#

source ./globals.sh
source ./config.sh

set -ex

log_msg info "Setting up GCC-$GCC_MAJOR_VER"

update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-$GCC_MAJOR_VER 60 --slave /usr/bin/g++ g++ /usr/bin/g++-$GCC_MAJOR_VER
update-alternatives --config gcc

# TODO: check if GCC setup was successful
#       -> parsing --version output is not suitable since different among dists

log_msg info "Script finished ($0)."
