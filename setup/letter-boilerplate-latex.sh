#!/bin/bash

sudo aptitude install -y texlive-latex-base texlive-xetex texlive-fonts-extra texlive-lang-german

cd `dirname $0`
./pandoc.sh

echo "-----------"
echo "How to use:"
echo "<http://mrzool.cc/writing/typesetting-automation/>"
echo "<http://mrzool.cc/tex-boilerplates/>"
echo "--> pandoc header.md letter.md -o letter.md.pdf --template=template.tex --pdf-engine=xelatex"
echo "(with settings in header.md and name, addresses and actual letter in letter.md)"
echo "(or without seperate header.md being used, just type "make" within the boilerplate checkout)"
echo ".vimrc:"
echo ":autocmd FileType markdown noremap <leader>p :w!<CR>:!pandoc [/path/to/]header.md % -o %.pdf --template=[/path/to/]template.tex --pdf-engine=xelatex<CR>"
echo "Enjoy!"

