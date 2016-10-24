#!/bin/bash
# <https://github.com/rkitover/vimpager>

# provides vimpager and vimcat for syntax highlighting, use with reduced vimrc
# adaptions for non-large files only
cd /tmp && git clone git://github.com/rkitover/vimpager && \
cd /tmp/vimpager && sudo checkinstall

