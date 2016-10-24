#!/bin/bash

# The Silver Searcher
# <https://github.com/ggreer/the_silver_searcher>


. `dirname $0`/../bin/setosenv.sh

case "$OPERATION_SYSTEM" in

    Debian)
        sudo aptitude build-dep silversearcher-ag &&\
        cd /tmp && git clone https://github.com/ggreer/the_silver_searcher ag && cd /tmp/ag &&\
        git checkout $(git describe --tags `git rev-list --tags --max-count=1`) && ./build.sh && sudo checkinstall
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

