#!/bin/bash
# <http://jonas.nitro.dk/tig/INSTALL.html>

cd `dirname $0`
./git.sh

sudo aptitude install --add-user-tag=tig libncurses-dev libncursesw5-dev libreadline-dev asciidoc &&\
cd /tmp &&\
#git clone http://github.com/jonas/tig &&\
cd tig &&\
make prefix=/usr/local &&\
sudo make install prefix=/usr/local &&\
make install-release-doc
