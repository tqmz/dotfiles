# suggests: lynx and elinks for html, highlight for text/code, img2txt for
# images, atool for archives, pdftotext for PDFs and mediainfo
# <https://github.com/ranger/ranger/wiki/Official-user-guide>

sudo aptitude install lynx highlight caca-utils atool poppler-utils mediainfo
cd /tmp && git clone git@github.com:ranger/ranger.git && cd ranger && make && sudo checkinstall
