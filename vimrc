"setting space as leader key
let mapleader = " "

syntax on
filetype plugin indent on 
set nu
set incsearch
set hlsearch
set ruler
set showcmd
set relativenumber
set wildmenu
set expandtab

"changing buffers
map <C-n> :bnext <CR>
map <C-p> :bprevious <CR>

set shiftwidth=4 softtabstop=4 expandtab

"split below, right.
set splitbelow splitright

" Solarized Dark
syntax enable
set t_Co=16
let g:solarized_termcolors=16
let g:solarized_termtrans=1
set background=dark
colorscheme solarized
"""""""""""""""""""""""""""""""""


