#!/bin/bash

# too long, didn't read – community maintained man pages
# tldr and navi for simplified, community maintained man pages

# tldr
# → <https://tldr.sh/>
sudo aptitude install -y tldr
tldr --help

# navi
# → <https://raw.githubusercontent.com/denisidoro/navi/master/README.md>
git clone --depth 1 http://github.com/denisidoro/navi /tmp/navi &&\
cd /tmp/navi &&\
make install $HOME/bin/
navi --help
