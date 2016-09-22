#!/bin/bash
# <https://github.com/ggreer/the_silver_searcher>
sudo aptitude build-dep silversearcher-ag &&\
cd /tmp && git clone https://github.com/ggreer/the_silver_searcher ag && cd /tmp/ag &&\
git checkout $(git describe --tags `git rev-list --tags --max-count=1`) && ./build.sh && sudo checkinstall

