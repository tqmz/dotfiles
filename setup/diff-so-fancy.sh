#!/bin/bash
sudo aptitude install curl
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/diff-so-fancy > $HOME/bin/diff-so-fancy && chmod +x $HOME/bin/diff-so-fancy
mkdir ~/bin/libexec
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/libexec/diff-so-fancy.pl > $HOME/bin/libexec/diff-so-fancy.pl && chmod +x $HOME/bin/libexec/diff-so-fancy.pl


