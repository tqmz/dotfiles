#!/bin/bash

# Git
# <https://github.com/git/git>


. `dirname $0`/../bin/setosenv.sh

case "$OPERATION_SYSTEM" in

    Debian)
        sudo aptitude install git
        ;;

    Centos)
        sudo yum remove git
        sudo yum install libcurl-devel zlib-devel wget &&\
        mkdir -p /tmp/git &&\
        cd /tmp/git &&\
        wget https://github.com/git/git/archive/v2.10.1.tar.gz &&\
        tar -xzf v2.*.tar.gz &&\
        cd git-2.* &&\
        make configure &&\
        ./configure --prefix=/usr &&\
        make all &&\
        sudo make install install-doc install-html
        ;;

    *)
        echo '$OPERATION_SYSTEM is unknown'
        exit 1

esac

cd `dirname $0`
./diff-highlight.sh
./diff-so-fancy.sh
