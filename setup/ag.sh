#!/bin/bash

# The Silver Searcher
# <https://github.com/ggreer/the_silver_searcher>


. `dirname $0`/../bin/setosenv.sh
. `dirname $0`/../zsh/functions

INSTALL_DIR="/tmp/ag"

case "$OPERATION_SYSTEM" in

    Debian)
        cd $INSTALL_DIR || git clone https://github.com/ggreer/the_silver_searcher $INSTALL_DIR
        cd $INSTALL_DIR && git fetch &&\
        sudo aptitude build-dep silversearcher-ag &&\
        RELEASE=$(git_latest_tag_or_master)
        git checkout $RELEASE &&\
        ./build.sh &&\
        sudo mkdir -p /usr/local/share/the_silver_searcher
        sudo checkinstall -y --pkgversion $RELEASE
        ;;

    Centos)
        sudo yum -y groupinstall 'Development Tools' &&\
        sudo yum -y install pcre-devel xz-devel &&\
        cd /tmp && git clone https://github.com/ggreer/the_silver_searcher ag && cd /tmp/ag &&\
        git checkout $(git describe --tags `git rev-list --tags --max-count=1`) && ./build.sh && sudo make install
        ;;

    *)
        echo '$OPERATION_SYSTEM is unknown'
        exit 1

esac

