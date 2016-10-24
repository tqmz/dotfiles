#!/bin/bash

# source this file in your shell config to set $OPERATION_SYSTEM
if [ -f /etc/debian_version ]; then
    export OPERATION_SYSTEM=Debian
elif [ -f /etc/redhat-release ]; then
    export OPERATION_SYSTEM=Centos
else
    export OPERATION_SYSTEM=unknown
fi

