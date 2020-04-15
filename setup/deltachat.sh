#!/bin/bash

# Delta Chat

# Mail based Telegram/Signal clone, desktop version
# Download: <https://delta.chat/en/download>
# Detla Chat @ FlatPak: <https://flathub.org/apps/details/chat.delta.desktop>
# <https://flatpak.org/setup/Debian/>

# dependencies
# flatpak available in Debian Buster
# or as backport for Debian Stretch
# `sources.list`: deb http://deb.debian.org/debian stretch-backports main
sudo aptitude -t stretch-backports install -y "flatpak"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install
flatpak install flathub chat.delta.desktop
flatpak run chat.delta.desktop
