#!/bin/bash

# pub – DOM crawler for command line, written in Go

# README
# <https://raw.githubusercontent.com/ericchiang/pup/master/README.md>

if hash pup 2>/dev/null; then
    echo "pup is already installed, version: $(pup --version)"
    exit 0
fi

cd `dirname $0` && ./go.sh
go get github.com/ericchiang/pup
pup --help
