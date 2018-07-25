#!/bin/bash

# Rofi Pass
# <https://github.com/carnager/rofi-pass>

cd /tmp
git clone https://github.com/carnager/rofi-pass.git
cd rofi-pass
git checkout `git latest-release`
sudo cp rofi-pass /usr/local/bin
sudo chmod u+x /usr/local/bin
