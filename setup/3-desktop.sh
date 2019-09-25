#!/bin/bash

# terminal
cd `dirname $0`
./konsole.sh

# window manager
sudo aptitude install -y suckless-tools # slock
sudo aptitude install -y xautolock
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

# images and colors
sudo aptitude install -y eog gthumb feh
sudo aptitude install -y gcolor2 # color picker

# pdf viewer
sudo aptitude install -y evince

# fonts
./fonts.sh

# audio
sudo aptitude install -y pavucontrol
sudo aptitude install -y twinkle #voip #telephone #client #sip
sudo aptitude install -y gnome-sound-recorder #audio #recorder #~/Recordings

# video
sudo aptitude install -y vlc simplescreenrecorder
sudo -H pip install --upgrade youtube-dl

# language
sudo aptitude install -y dict dictd dict-de-en dict-freedict-spa-eng dict-freedict-eng-spa dict-freedict-deu-fra dict-freedict-fra-deu

# mind maps
sudo aptitude install -y freeplane

# clock / timer
./countdown.sh
