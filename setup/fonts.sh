#!/bin/bash

# Fonts
FONTS_DIR=/usr/share/local/fonts
sudo mkdir -p $FONTS_DIR/truetype
sudo cp $DATAFILES/fonts/*.ttf $FONTS_DIR/truetype
sudo dpkg-reconfigure fontconfig
