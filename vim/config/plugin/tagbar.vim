
" GENERAL OPTIONS
nmap <silent> <leader>t :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_compact = 1
let g:tagbar_left = 0
let g:tagbar_width = 35
let g:tagbar_indent = 2
let g:tagbar_show_linenumbers = 2
let g:tagbar_iconchars = ['►', '▼']
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_autopreview = 1
let g:tagbar_previewwin_pos = "botright"


" FILETYPE OPTIONS
" for more file types, see:
" <https://github.com/majutsushi/tagbar/wiki#support-for-additional-filetypes>

" PHP
" see also <https://github.com/vim-php/tagbar-phpctags.vim>
let g:tagbar_type_php  = {
    \ 'ctagstype' : 'php',
    \ 'sort' : 0,
    \ 'kinds'   : [
        \ 'n:namespaces:1',
        \ 'a:alias:1',
        \ 'i:interfaces:1',
        \ 't:traits:1',
        \ 'c:classes:1',
        \ 'd:constantDefinitions:1',
        \ 'f:functions:0',
    \ ]
\ }

" Markdown
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:headings',
        \ 'l:links',
        \ 'i:images'
    \ ],
    \ "sort" : 0
\ }

" ReStructuredText
let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : '~/bin/rst2ctags/rst2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

