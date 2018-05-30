#!/bin/bash

# Rancher Compose

# <https://rancher.com/docs/rancher/v1.6/en/cattle/rancher-compose/>

TMP_DIR=/tmp/rancher-compose
git clone https://github.com/rancher/rancher-compose $TMP_DIR && \
cd $TMP_DIR && \
make build && \
sudo cp bin/rancher-compose /usr/local/bin/

