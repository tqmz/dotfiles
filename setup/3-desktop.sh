#!/bin/bash

# terminal
sudo aptitude install -y konsole &&\
sudo update-alternatives --set x-terminal-emulator /usr/bin/konsole

# window manager
sudo aptitude install -y suckless-tools # slock
sudo aptitude install -y i3 rofi arandr

# mail
sudo aptitude install -y evolution imapfilter
sudo aptitude install -y alpine alpine-doc

# file manager
sudo aptitude install -y spacefm

# images
sudo aptitude install -y gthumb

# pdf viewer
sudo aptitude install -y evince
