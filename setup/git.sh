#!/bin/bash

# Git
# <https://github.com/git/git>

sudo aptitude install -y git

cd `dirname $0` &&\
./diff-highlight.sh &&\
./diff-so-fancy.sh &&\
./tig.sh &&\
./git-remote-gcrypt.sh
