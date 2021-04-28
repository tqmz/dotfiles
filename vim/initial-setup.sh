#!/bin/bash

sudo aptitude install -y vim vim-gtk3 # vim-gtk3 for +clipboard compile option to allow `"+y`
# Vundle <https://github.com/VundleVim/Vundle.vim>
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
vim +PluginInstall +qall

# TODO: <https://unix.stackexchange.com/a/397464> fix paste on Debian Stretch

cd `dirname $0`
./ctags.sh
