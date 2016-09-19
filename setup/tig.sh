#!/bin/bash
# <http://jonas.nitro.dk/tig/INSTALL.html>

# for yet missing diff-highlight support see <https://github.com/jonas/tig/issues/313>
sudo aptitude install --add-user-tag=tig libncurses-dev libncursesw5-dev libreadline-dev && \
cd /tmp && git clone http://github.com/jonas/tig && \
cd /tmp/tig && make && make install && make install-release-doc
