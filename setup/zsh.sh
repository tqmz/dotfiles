#!/bin/bash

sudo aptitude install -y zsh &&\
cd /usr/local/src/ &&\

git clone https://github.com/robbyrussell/oh-my-zsh.git || cd oh-my-zsh; git pull; cd -
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.zsh}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.zsh}/plugins/zsh-autosuggestions

sudo chsh -s /usr/bin/zsh $USER
zsh
