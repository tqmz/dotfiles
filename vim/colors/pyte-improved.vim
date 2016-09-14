source ~/.vim/bundle/Colour-Sampler-Pack/colors/pyte.vim
"source colors/pyte.vim

" Cursor
hi CursorLine   guibg=#dfdfdf
hi CursorColumn guibg=#dfdfdf

" 80 lines limit (put this into colorscheme)
highlight OverLength ctermbg=red ctermfg=white guibg=#ffdddd
match OverLength /\%81v/
