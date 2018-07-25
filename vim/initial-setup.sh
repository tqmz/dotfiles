#!/bin/bash

sudo aptitude install vim
# Vundle <https://github.com/VundleVim/Vundle.vim>
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
vim +PluginInstall +qall

cd `dirname $0`
./fzf.sh
./ranger.sh
./ctags.sh
