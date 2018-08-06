#!/bin/bash

sudo aptitude install konsole &&\
sudo update-alternatives --set x-terminal-emulator /usr/bin/konsole
sudo aptitude install i3 rofi arandr
sudo aptitude install evolution imapfilter
