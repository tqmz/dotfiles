#!/bin/bash

sudo aptitude install -y make gcc checkinstall curl wget tree locate info ncdu
sudo aptitude install -y postfix # MTA for crontab local mails

# <https://wiki.debian.org/UnattendedUpgrades>
sudo aptitude install -y unattended-upgrades apt-listchanges
sudo vi /etc/apt/apt.conf.d/50unattended-upgrades
sudo vi /etc/apt/apt.conf.d/20auto-upgrades
sudo unattended-upgrade -d

cd `dirname $0`
./git.sh
./vim.sh
./zsh.sh
