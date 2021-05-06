syntax on

filetype plugin indent on 
set ts=4		
set nu
set incsearch
set hlsearch
set ruler
set showcmd
set relativenumber
map <F5> :w<Enter>:!clear && python3 "%"<Enter>

set wildmenu
set expandtab

map <C-n> :bnext <CR>
map <C-p> :bprevious <CR>

set shiftwidth=4 softtabstop=4 expandtab
