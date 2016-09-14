" rst filetype
"au! Bufread,BufNewFile *.rst      set ft=rst
so <sfile>:p:h/betterdocs.vim
