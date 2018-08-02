#!/bin/bash

# Firefox Latest Release
# <https://support.mozilla.org/de/kb/firefox-unter-linux-installieren#w_ohne-paketverwaltung-installieren>
# <https://wiki.debian.org/Firefox#Firefox_Stable.2C_Beta_and_Nightly>

killall firefox-esr
sudo aptitude remove -y firefox-esr &&\
cd /tmp &&\
wget -O firefox-latest.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=de" &&\
sudo mkdir /opt/firefox &&\
sudo tar xjf /tmp/firefox-latest.tar.bz2 -C /opt/firefox/ &&\
sudo ln -s /opt/firefox/firefox/firefox /usr/local/bin/firefox
