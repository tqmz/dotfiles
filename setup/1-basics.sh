#!/bin/bash

sudo aptitude install make gcc checkinstall curl

sudo aptitude install i3 rofi

cd `dirname $0`
./git.sh
./vim.sh
./zsh.sh
