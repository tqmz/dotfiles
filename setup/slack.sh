#!/bin/bash

# Release Notes
# https://slack.com/intl/de-de/release-notes/linux

cd /tmp &&\
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.2.1-amd64.deb &&\
sudo aptitude install -y gconf2 gconf-service libappindicator1 &&\
sudo dpkg -i slack-desktop-3.2.1-amd64.deb

