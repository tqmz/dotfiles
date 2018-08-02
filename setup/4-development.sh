#!/bin/bash

sudo aptitude install -y libxml2-utils #xmllint #xmlcatalog
sudo aptitude install -y tidy

cd `dirname $0`
./mycli.sh
