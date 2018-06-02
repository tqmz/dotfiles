#!/bin/bash

sudo aptitude install zsh &&\
sudo mkdir -p /usr/local/src &&\ 
cd /usr/local/src/ &&\
sudo git clone https://github.com/robbyrussell/oh-my-zsh.git &&\
sudo chsh -s /usr/bin/zsh $USER &&\
zsh
