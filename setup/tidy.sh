#!/bin/bash

# Tidy

. `dirname $0`/../bin/setosenv.sh

case "$OPERATION_SYSTEM" in

    Debian)
        sudo aptitude install tidy
        ;;

    Centos)
        sudo yum install tidy
        ;;

    *)
        echo '$OPERATION_SYSTEM is unknown'
        exit 1

esac
