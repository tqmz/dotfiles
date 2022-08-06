#!/bin/zsh

# gopass
# <https://raw.githubusercontent.com/gopasspw/gopass/master/docs/setup.md>

#cd `dirname $0`
# throwing:
# package crypto/ed25519: unrecognized import path "crypto/ed25519" (import path does not begin with hostname)
#go get github.com/gopasspw/gopass

RELEASE="1.12.7"
FILE="gopass_${RELEASE}_linux_amd64.deb"
DEB_URL="https://github.com/gopasspw/gopass/releases/download/v${RELEASE}/${FILE}"

wget -O /tmp/${FILE} -c $DEB_URL
sudo dpkg -i /tmp/${FILE}

# zsh completions
# as suggested on
# <https://github.com/gopasspw/gopass/issues/585>
gopass completion zsh > /tmp/_gopass && \
sudo cp -u /tmp/_gopass /usr/share/zsh/vendor-completions/_gopass && \
rm -f ~/.zcompdump && autoload -U compinit && compinit
