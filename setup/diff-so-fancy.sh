#!/bin/bash

# Diff so fancy
# <https://github.com/so-fancy/diff-so-fancy>

. `dirname $0`/../bin/setosenv

case "$OPERATION_SYSTEM" in

    Debian)
        sudo aptitude install curl
        ;;

    Centos)
        sudo yum install curl.x86_64
        ;;

    *)
        echo '$OPERATION_SYSTEM is unknown'
        exit 1

esac

curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/diff-so-fancy > $HOME/bin/diff-so-fancy && chmod +x $HOME/bin/diff-so-fancy
mkdir ~/bin/libexec
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/libexec/diff-so-fancy.pl > $HOME/bin/libexec/diff-so-fancy.pl && chmod +x $HOME/bin/libexec/diff-so-fancy.pl


