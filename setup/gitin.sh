#!/bin/bash

# Gitin – command line git explorer
# <https://github.com/isacikgoz/gitin>

cd `dirname $0`
./go.sh
sudo aptitude install -y cmake pkg-config
go get -d github.com/isacikgoz/gitin
cd $GOPATH/src/github.com/isacikgoz/gitin/
make install
