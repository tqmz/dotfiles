" rst filetype
"au! Bufread,BufNewFile *.rst      set ft=rst


" textwidth
au! FileType rst      set tw=80
au! FileType markdown set tw=80

" formatoptions (:help fo-table)
"
" t Auto-wrap text using textwidth
" c Auto-wrap comments using textwidth, inserting the current comment
"   leader automatically.
" r Automatically insert the current comment leader after hitting
"   <Enter> in Insert mode.
" q Allow formatting of comments with "gq". <== note this!
"   Note that formatting will not change blank lines or lines containing
"   only the comment leader.  A new paragraph starts after such a line,
"   or when the comment leader changes.
" l ...

au! FileType rst      set fo=tcrqnlj1
au! FileType markdown set fo=tcrqnlj1

" open file under cursor as image
:nnoremap gO :!feh ./<cfile> &<CR>
