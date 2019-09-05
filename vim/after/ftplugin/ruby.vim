" use ri.vim as manpage lookup
set keywordprg=:call\ ri#LookupNameUnderCursor()

" treat class names like ActiveRecord::Migration as one word
set iskeyword=@,48-57,_,192-255,_,$,@,%,#,-,:

" disable the default ri.vim plugin mappings
let g:ri_no_mappings=1

" enable custom ri.vim plugin mappings
nnoremap  <leader>r :call ri#OpenSearchPrompt(0)<cr> " horizontal split
nnoremap  <leader>R :call ri#OpenSearchPrompt(1)<cr> " vertical split
nnoremap  <leader>k :call ri#LookupNameUnderCursor()<cr> " keyword lookup

