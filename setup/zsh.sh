#!/bin/bash

sudo aptitude install zsh &&\
sudo mkdir -p /usr/local/src &&\
cd /usr/local/src/ &&\
sudo git clone https://github.com/robbyrussell/oh-my-zsh.git &&\
sudo chsh -s /usr/bin/zsh $USER &&\
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.zsh}/plugins/zsh-syntax-highlighting &&\
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.zsh}/plugins/zsh-autosuggestions &&\
zsh
