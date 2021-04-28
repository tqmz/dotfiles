#!/bin/bash

# too long, didn't read – community maintained man pages
# tldr and navi for simplified, community maintained man pages

# tldr
# → <https://tldr.sh/>
sudo aptitude install -y tldr
tldr --help

# navi (requires ./fzf.sh)
# → <https://raw.githubusercontent.com/denisidoro/navi/master/README.md>
git clone --depth 1 http://github.com/denisidoro/navi /tmp/navi &&\
cd /tmp/navi &&\
export BIN_DIR=$HOME/bin; export TMP_DIR=/tmp/navi; make install
sudo cp $HOME/bin/navi /usr/local/bin/
navi --help
echo "navi repo browse  # to add cheatsheets"
