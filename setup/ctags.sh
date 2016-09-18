#!/bin/bash
# Debian Jessie: aptitude install autoconf pkg-config
cd /tmp && git clone https://github.com/universal-ctags/ctags.git && cd ctags && ./autogen.sh && ./configure && make && sudo checkinstall

