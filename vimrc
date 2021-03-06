scriptencoding utf-8
set encoding=utf-8

:if $VIM_CRONTAB == "true"
:set nobackup
:set nowritebackup
:endif

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

set list listchars=tab:».,trail:.
autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()
autocmd filetype crontab setlocal nobackup nowritebackup

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>

syntax match nonascii "[^\x00-\x7F]"
highlight nonascii guibg=Red ctermbg=2

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
