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
# Global functions to support the installation & setup scripts.
#

# color definitions for log output
DARKGRAY='\033[1;30m'
RED='\033[0;31m'    
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'    
YELLOW='\033[1;33m'
BLUE='\033[0;34m'    
PURPLE='\033[0;35m'    
LIGHTPURPLE='\033[1;35m'
CYAN='\033[0;36m'    
WHITE='\033[1;37m'
SET='\033[0m'

# log output functions
log_msg()
{
    TS=$(date +"%F %T,%3N")
    CLASS=$1
    MSG=$(echo $* | sed -s "s/$CLASS //g")
    COLOR=
    PREFIX="-----"
    case $CLASS in
        err)
            COLOR=$RED
            PREFIX="FAIL"
            ;;
        warn)
            COLOR=$YELLOW
            PREFIX="WARN"
            ;;
        info)
            COLOR=$BLUE
            PREFIX="INFO"
            ;;
        *)
            COLOR=  # just use default
    esac

    echo -e "$TS $COLOR[$PREFIX]: $MSG $SET"
}

