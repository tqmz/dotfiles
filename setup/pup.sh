#!/bin/bash

# pub – DOM crawler for command line, written in Go

# README
# <https://raw.githubusercontent.com/ericchiang/pup/master/README.md>

cd `dirname $0` && ./go.sh
go get github.com/ericchiang/pup
pup --help
