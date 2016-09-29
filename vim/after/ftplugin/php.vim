" PHP help files as man pages => `k` in normal mode
" for more flexible approach see blueyed dotfiles
set keywordprg=pman


" tabs (overwrite this via project .vimrc files)
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4


" Plugin 'StanAngeloff/php.vim'
let php_sql_query          = 1
let php_html_in_strings    = 1
let php_parent_error_close = 1
let php_no_shorttags       = 1


" phpdoc
let g:pdv_cfg_Type      = "string"
let g:pdv_cfg_Package   = ""
let g:pdv_cfg_Package   = ""
let g:pdv_cfg_Version   = ""
let g:pdv_cfg_Author    = "Tim Quellmalz <tim.quellmalz@webentwickler.cc>"
let g:pdv_cfg_Copyright = ""
let g:pdv_cfg_License   = ""
" source ~/.vim/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
"map <C-p> :set paste<CR>:exe PhpDoc()<CR>:set nopaste<CR>i
map <F5> <Esc>:EnableFastPHPFolds<Cr>
"map <F6> <Esc>:EnablePHPFolds<Cr>
"map <F7> <Esc>:DisablePHPFolds<Cr>


" php-getter-setter.vim settings
  let b:phpgetset_setterTemplate =
  \ "\n" .
  \ "    /**\n" .
  \ "     * set %varname%\n" .
  \ "     *\n" .
  \ "     * @param mixed $%varname%\n" .
  \ "     */\n" .
  \ "    public function %funcname%($%varname%)\n" .
  \ "    {\n" .
  \ "        $this->%varname% = $%varname%;\n" .
  \ "\n" .
  \ "    return $this;\n" .
  \ "    }"
  let b:phpgetset_getterTemplate =
    \ "// test\n" .
    \ "    /**\n" .
    \ "     * get %varname%\n" .
    \ "     *\n" .
    \ "     * @return %varname%\n" .
    \ "     */\n" .
    \ "    public function %funcname%()\n" .
    \ "    {\n" .
    \ "        return $this->%varname%;\n" .
    \ "    }"

