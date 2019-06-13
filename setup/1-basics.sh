#!/bin/bash

sudo aptitude update
sudo aptitude install -y make gcc checkinstall curl wget tree locate info ncdu htop iotop
sudo aptitude install -y apt-transport-https ca-certificates gnupg2 software-properties-common
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

sudo aptitude install -y ruby ruby-dev default-libmysqlclient-dev && sudo gem install bundler pry
sudo aptitude install -y python-pip python3-pip
./rust.sh
