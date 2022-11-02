#!/bin/bash

# YAML Parser
VERSION=v4.27.5
BINARY=yq_linux_amd64

wget https://github.com/mikefarah/yq/releases/download/${VERSION}/${BINARY} -O $HOME/bin/yq && chmod +x $HOME/bin/yq
