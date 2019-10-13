#!/bin/bash

mkdir -p ~/bin
rm -f ~/bin/youtube-dl
curl -L https://yt-dl.org/downloads/latest/youtube-dl -o ~/bin/youtube-dl
chmod a+rx ~/bin/youtube-dl
