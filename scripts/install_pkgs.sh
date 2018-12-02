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
# Install OS required OS packages
# ===============================
#
# This script can be used on Debian Linux distributions to install all
# packages required to run RTEM Source Builder.
#
# It has currently only been tested on Ubuntu 18.04 Bionic.
#

source ./globals.sh

set -ex

log_msg info "Script started ($0)."

log_msg info "Installing required packages..."
apt-get -qq update &&
apt-get -qq -y install \
        gcc-7 \
        g++-7 \
        gnat-7 \
        texinfo \
        pax  \
	libncurses5 \
        make \
        git \
        cmake \
        make \
        bison \
        flex \
	python3.6 \
        python3.6-dev \
	python3-setuptools \
        python \
	libreadline5

log_msg info "Script finished ($0)."
