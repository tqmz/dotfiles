#!/bin/bash
sudo aptitude install curl
curl https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight > $HOME/bin/diff-highlight && chmod +x $HOME/bin/diff-highlight
