#!/bin/bash

#############################################################
# GO
# <https://golang.org/doc/install/source>
#############################################################
# Go 1.4 is the last version compiling with C,
# all later versions require Go 1.4 for compiling.
# Go 1.4 does not compile well ... thus binary.
VERSION=1.11.5
OS=linux
ARCH=amd64
export GOPATH=${GOPATH:-/opt/go}
#############################################################

if hash go 2>/dev/null; then
    echo Go is already installed.
    go version
    exit 0
fi

echo Installing Go ${VERSION} to ${GOPATH} ...
FILE=go${VERSION}.${OS}-${ARCH}.tar.gz
URL=https://dl.google.com/go/${FILE}

cd /tmp
wget -c $URL
sudo mkdir -p $GOPATH && \
sudo tar -C $GOPATH -xzf $FILE
sudo ln -fs $GOPATH/go/bin/go /usr/local/bin/go
sudo chown -R $USER:$USER $GOPATH
