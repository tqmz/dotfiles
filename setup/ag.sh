#!/bin/bash

# The Silver Searcher
# <https://github.com/ggreer/the_silver_searcher>


. `dirname $0`/../zsh/functions

INSTALL_DIR="/tmp/ag"

cd $INSTALL_DIR || git clone https://github.com/ggreer/the_silver_searcher $INSTALL_DIR
cd $INSTALL_DIR && git fetch &&\
sudo aptitude build-dep -y silversearcher-ag &&\
RELEASE=$(git_latest_tag_or_master)
git checkout $RELEASE &&\
./build.sh &&\
sudo mkdir -p /usr/local/share/the_silver_searcher
sudo checkinstall -y --pkgversion $RELEASE
