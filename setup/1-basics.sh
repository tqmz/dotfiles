#!/bin/bash

sudo aptitude install make gcc checkinstall curl wget tree

cd `dirname $0`
./git.sh
./vim.sh
./zsh.sh