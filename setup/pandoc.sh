#!/bin/bash

# Pandoc
#sudo aptitude install -y pandoc # Debian Stretch: pandoc 1.17 does not match with letter-boiler-plate-latex, so we do:
# <https://pandoc.org/installing.html#compiling-from-source> with
# <https://docs.haskellstack.org/en/stable/install_and_upgrade/#debian>

hash stack 2>/dev/null || curl -sSL https://get.haskellstack.org/ | sh &&\
cd /tmp/ &&\
git clone https://github.com/jgm/pandoc &&\
cd pandoc &&\
stack setup -v &&\
stack install -v &&\
# rm -rf ~/.stack

# Pandoc Themes
# <https://github.com/diversen/pandoc-uikit>
# <https://getuikit.com/v2/docs/customizer.html> #css #customize

export PANDOC_THEMES_DIR=/opt/pandoc/themes/ &&\
sudo mkdir -p $PANDOC_THEMES_DIR &&\
sudo chown -R $USER:$USER $PANDOC_THEMES_DIR &&\

cd $PANDOC_THEMES_DIR &&\
ln -s "`dirname $0`/../pandoc/templates/default.latex" #a4 #de #pdf

#git clone https://github.com/diversen/pandoc-uikit

# Usage Example:
# pandoc https://raw.githubusercontent.com/jgm/pandoc/master/MANUAL.txt -o index.html -f markdown --template standalone.html --toc --toc-depth=2

# .vimrc Example:
# :autocmd FileType markdown noremap <C-M> :w!<CR>:!pandoc -s -f markdown -t html --template $PANDOC_THEMES_DIR/pandoc-uikit/standalone.html --toc --toc-depth=3 % -o %.html<CR>

# Pandoc (Extended) Markdown Syntax:
# <https://pandoc.org/MANUAL.html#pandocs-markdown>

# Pandoc Extensions
# <http://pandoc.org/MANUAL.html#extensions> (general)
# <https://pandoc.org/MANUAL.html#pandocs-markdown> (for Markdown)

