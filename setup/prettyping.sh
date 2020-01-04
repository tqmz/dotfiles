#!/bin/bash

# prettyping –
# a beautiful wrapper around ping

mkdir -p $HOME/bin
wget "https://raw.githubusercontent.com/denilsonsa/prettyping/e8d7538b8742b27cffe28e9dfe13d1d1a12288e3/prettyping" \
    -O $HOME/bin/prettyping
chmod u+x $HOME/bin/prettyping
