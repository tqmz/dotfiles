#!/bin/bash

# bat
# – a better cat
# <https://github.com/sharkdp/bat#installation>
# <https://github.com/sharkdp/bat/releases>

cd /tmp
wget https://github.com/sharkdp/bat/releases/download/v0.11.0/bat_0.11.0_amd64.deb && \
sudo dpkg -i bat_0.11.0_amd64.deb
