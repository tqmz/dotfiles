#!/bin/bash

for repo in `find -type d -name '.git'`; do
    echo $repo
    cd $repo/..
    echo 'GIT FETCH, CHECKOUT + RESET:'
    git fetch origin
    git checkout -q origin/master
    git reset --hard HEAD
    echo 'LAST LOGS:'
    git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold dim white)(%ar)%C(reset) %C(blue)%s%C(reset) %C(bold dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all -n 12
    cd -
done

