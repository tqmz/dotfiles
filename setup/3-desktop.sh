#!/bin/bash

sudo aptitude install -y konsole &&\
sudo update-alternatives --set x-terminal-emulator /usr/bin/konsole
sudo aptitude install -y i3 rofi arandr
sudo aptitude install -y evolution imapfilter
sudo aptitude install -y alpine alpine-doc
