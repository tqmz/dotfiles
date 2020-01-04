#!/bin/bash

# Diff Highlight
# <https://github.com/git/git>
# <https://github.com/git/git/tree/master/contrib/diff-highlight>

. `dirname $0`/../bin/setosenv

cd /tmp
git clone https://github.com/git/git.git &&\
cd git/contrib/diff-highlight &&\
pwd &&\
make &&\
sudo cp diff-highlight /usr/local/bin &&\
sudo cp DiffHighlight.pm /etc/perl/
