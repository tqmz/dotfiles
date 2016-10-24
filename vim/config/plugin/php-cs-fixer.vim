" PHP-CS-FIXER CONFIGURATION
" <https://github.com/FriendsOfPHP/PHP-CS-Fixer>

let g:php_cs_fixer_level = 'all'                  " which level ? psr0|psr1|psr2|symfony|all
let g:php_cs_fixer_config_file = "$HOME/.php_cs"  " configuration file
let g:php_cs_fixer_php_path = 'php'               " Path to PHP
"let g:php_cs_fixer_fixers_list = 'linefeed,short_tag,indentation' " specific fixers
let g:php_cs_fixer_enable_default_mapping = 0     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

nnoremap <silent><leader>!  :call PhpCsFixerFixFile()<CR>
nnoremap <silent><leader>!! :call PhpCsFixerFixDirectory()<CR>
