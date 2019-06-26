#!/bin/bash

# Slack

# Release Notes
# https://slack.com/intl/de-de/release-notes/linux

# dependencies
cd `dirname $0` && ./pup.sh

# find out latest version
version=$(curl -s https://slack.com/intl/de-de/release-notes/linux | pup '#main > div > div > div > div.legal-content > article:nth-child(1) > h2 text{}' | cut -d' ' -f 2)
echo "Slack, latest version available: $version"

# check if version is installed
if hash slack 2>/dev/null; then
    if [ "$version" == "$(slack --version)" ]; then
        echo Slack is already installed in version $version.
        exit 0
    else
        echo Uninstalling previous version.
        sudo aptitude remove slack-desktop
    fi
fi

# download and install
cd /tmp &&\
wget -c https://downloads.slack-edge.com/linux_releases/slack-desktop-${version}-amd64.deb &&\
sudo aptitude install -y gconf2 gconf-service libappindicator1 &&\
sudo dpkg -i slack-desktop-${version}-amd64.deb

