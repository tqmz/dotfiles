#!/bin/bash

# Diff Highlight
# <https://github.com/git/git>
# <https://github.com/git/git/tree/master/contrib/diff-highlight>

. `dirname $0`/../bin/setosenv.sh

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

curl https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight > $HOME/bin/diff-highlight && chmod +x $HOME/bin/diff-highlight
