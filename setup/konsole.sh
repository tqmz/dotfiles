#!/bin/bash

sudo aptitude install -y konsole &&\
sudo update-alternatives --set x-terminal-emulator /usr/bin/konsole
sudo aptitude install -y colortest #cli #colors

# colorschemes see <../konsole/>
