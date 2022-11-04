#!/bin/bash

# bit – a command line wrapper on git
# <https://github.com/chriswalz/bit>
# <https://raw.githubusercontent.com/chriswalz/bit/master/README.md>

curl -sf https://gobinaries.com/chriswalz/bit | sh;
curl -sf https://gobinaries.com/chriswalz/bit/bitcomplete | sh && echo y | COMP_INSTALL=1 bitcomplete
