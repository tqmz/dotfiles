#!/bin/bash

# stup
# daily standup notes organizer
# <https://dev.to/iridakos/stup-a-cli-tool-for-daily-notes-503f>
# <https://github.com/iridakos/stup/blob/master/README.md>


wget -O /usr/local/bin/stup "https://raw.githubusercontent.com/iridakos/stup/187c8409ea10785bceb3ec87b38558abaea71755/stup"
chmod a+x /usr/local/bin/stup
stup --configure
