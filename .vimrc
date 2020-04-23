scriptencoding utf-8

" vim-plug {{{
call plug#begin('~/vimfiles/plugged')

Plug 'vim-jp/vimdoc-ja'
Plug 'vim-jp/vital.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'

call plug#end()
" }}}

" netrw settings {{{
let g:netrw_banner=0

let g:netrw_liststyle=0

let g:netrw_preview=1

let g:netrw_hide=1

let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+'

augroup NetrwKeyMap
	au!

	au FileType netrw nmap <buffer> h -

	au FileType netrw nmap <buffer> l <CR>

	au FileType netrw nmap <buffer> . gh
augroup END
" }}}

" テスト
set scrolloff=999
set foldmethod=marker
set noequalalways
set list
set listchars=tab:^\ ,trail:-
set visualbell
set nonumber
set undofile
set incsearch
set hlsearch
set noshowmatch
set noshowmode
set laststatus=2
set showtabline=2
set fileencodings=utf-8,cp932
set ttimeoutlen=100

" backup, tmp, undo directories settings {{{
set backupdir=$HOME/.vim/backup
if !isdirectory($HOME . '/.vim/backup')
	call mkdir($HOME . '/.vim/backup', 'p')
endif

set directory=$HOME/.vim/tmp
if !isdirectory($HOME . '/.vim/tmp')
	call mkdir($HOME . '/.vim/tmp', 'p')
endif

set undodir=$HOME/.vim/undo
if !isdirectory($HOME . '/.vim/undo')
	call mkdir($HOME . '/.vim/undo', 'p')
endif
" }}}

" lightline {{{
let g:lightline = {
			\ 'colorscheme': 'Tomorrow',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'readonly', 'filename', 'modified' ] ],
			\ },
			\ 'component_function': {
			\   'filename': 'LightlineFilename',
			\ },
			\ }

function! LightlineFilename()
	return expand('%:~') !=# '' ? expand('%:~') : '[No Name]'
endfunction
" }}}

" colorscheme {{{
set t_Co=16
colorscheme desert
" }}}

syntax on
