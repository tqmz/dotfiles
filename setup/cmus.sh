#!/bin/bash

# CMUS – the C Music Player #cli #ncurses
# <https://cmus.github.io/>
# <https://github.com/cmus/cmus>

# cmusfm – the cmus last.fm scrobbler
# <https://github.com/Arkq/cmusfm>

sudo aptitude build-dep cmus &&\
cd /tmp &&\
git clone -b pu https://github.com/cmus/cmus.git &&\
cd cmus &&\
git checkout $(git describe --tags `git rev-list --tags --max-count=1`) &&\
./configure &&\
 # make install used here, as checkinstall makes /usr/local/lib/cmus/ip a binary (must be dir)
sudo make install &&\

sudo aptitude install --add-user-tag=cmus libcurl3-dev libcrypto++-dev libssl-dev libnotify-dev &&\
cd /tmp &&\
git clone https://github.com/Arkq/cmusfm.git &&\
cd cmusfm &&\
autoreconf --install &&\
mkdir -p build && cd build &&\
../configure --enable-libnotify &&\
make && sudo checkinstall &&\

cmusfm init
