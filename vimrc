"=========================
" Base
"=========================
syntax on

"=========================
" File
"=========================
filetype plugin on
set encoding=utf-8
set fileformats=unix,dos,mac
set fileencodings=utf-8,euc-jp

"=========================
" Searching and replace
"=========================
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan
set nogdefault

"=========================
" Input
"=========================
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

"=========================
" Mapping
"=========================
nmap <Esc><Esc> :nohlsearch<CR>

"=========================
" Other
"=========================
set number
set scrolloff=5
set showmatch
set noerrorbells

set laststatus=2
highlight statusline term=NONE cterm=NONE guifg=gray ctermfg=black ctermbg=gray
