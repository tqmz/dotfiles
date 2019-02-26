#!/bin/bash

# terminal
sudo aptitude install -y konsole &&\
sudo update-alternatives --set x-terminal-emulator /usr/bin/konsole

# window manager
sudo aptitude install -y suckless-tools # slock
sudo aptitude install -y i3 rofi arandr

# browser
cd `dirname $0`
./firefox.sh
./chromium.sh
sudo aptitude install -y epiphany-browser

# mail
sudo aptitude install -y evolution imapfilter
sudo aptitude install -y alpine alpine-doc

# file manager
sudo aptitude install -y spacefm

# images
sudo aptitude install -y gthumb

# pdf viewer
sudo aptitude install -y evince

# audio
sudo aptitude install -y pavucontrol

# video
sudo aptitude install -y youtube-dl
