#!/bin/bash

# terminal
cd `dirname $0`
./konsole.sh

# keyboard
sudo aptitude install -y xdotool # → xdotool key Caps_Lock

# tasksel
sudo tasksel install

# window manager
sudo aptitude install -y lightdm
sudo aptitude install -y i3 i3 i3-wm i3status rofi arandr
sudo aptitude install -y suckless-tools # slock
sudo aptitude install -y xautolock

# X11 clipboard
sudo aptitude install -y xclip

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
sudo aptitude install -y imagemagick
sudo aptitude install -y eog gthumb feh
sudo aptitude install -y gpick # color picker
sudo aptitude install -y rapid-photo-downloader

# pdf viewer
sudo aptitude install -y evince

# pdf toolkit & grep
sudo aptitude install -y pdftk pdfgrep

# fonts
./fonts.sh

# audio
sudo aptitude install -y pavucontrol
sudo aptitude install -y twinkle #voip #telephone #client #sip
sudo aptitude install -y gnome-sound-recorder #audio #recorder #~/Recordings

# video
sudo aptitude install -y flameshot #screenshots
sudo aptitude install -y vlc simplescreenrecorder
./youtube-dl.sh

# language
sudo aptitude install -y dict dictd dict-de-en dict-freedict-spa-eng \
dict-freedict-eng-spa dict-freedict-deu-fra dict-freedict-fra-deu

# mind maps
sudo aptitude install -y freeplane

# clock / timer
./countdown.sh
