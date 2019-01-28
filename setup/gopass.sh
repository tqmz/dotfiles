#!/bin/bash

# gopass
# <https://github.com/gopasspw/gopass/blob/master/docs/setup.md>

cd `dirname $0`
./go.sh
go get github.com/gopasspw/gopass

# zsh completions
# as suggested on
# <https://github.com/gopasspw/gopass/issues/585>
gopass completion zsh > /tmp/_gopass && \
sudo cp /tmp/_gopass /usr/share/zsh/vendor-completions/_gopass && \
rm ~/.zcompdump && autoload -U compinit && compinit
