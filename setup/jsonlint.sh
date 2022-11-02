#!/bin/bash

# jsonlint
# <https://github.com/zaach/jsonlint>
# <https://raw.githubusercontent.com/zaach/jsonlint/master/README.md>

mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
npm install jsonlint -g
