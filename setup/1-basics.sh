#!/bin/bash

sudo aptitude install -y make gcc checkinstall curl wget tree locate info ncdu
sudo aptitude install -y postfix # MTA for crontab local mails

cd `dirname $0`
./git.sh
./vim.sh
./zsh.sh
