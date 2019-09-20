#!/bin/bash
. `dirname $0`/../zsh/functions

INSTALL_DIR="/tmp/ctags"

cd $INSTALL_DIR || git clone https://github.com/universal-ctags/ctags.git $INSTALL_DIR
cd $INSTALL_DIR && git fetch &&\
RELEASE=$(git_latest_tag_or_master) &&\
git checkout $RELEASE &&\
./autogen.sh &&\
./configure &&\
make &&\
sudo checkinstall -y --pkgversion 0.0.0
