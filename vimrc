"setting space as leader key
let mapleader = " "

syntax on
filetype plugin indent on 
set nu
set laststatus=2
set noshowmode
set incsearch
set hlsearch
set ruler
set showcmd
set relativenumber
set wildmenu
set expandtab
set noswapfile
set hidden
set colorcolumn=80
set statusline=2
set shiftwidth=4 softtabstop=4 expandtab
"split below, right.
set splitbelow splitright
set scrolloff=8
let g:netrw_banner = 0
let g:netrw_winsize = 25



"changing buffers
map <C-n> :bnext <CR>
map <C-p> :bprevious <CR>
nnoremap <leader>e :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>


" Solarized Dark
syntax enable
set t_Co=256
let g:solarized_termcolors=16
let g:solarized_termtrans=1
set background=dark
colorscheme solarized
"""""""""""""""""""""""""""""""""
"#######PLUGINS#######
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
"Plug 'ap/vim-css-color'
Plug 'chrisbra/Colorizer'
call plug#end()



"TESTing
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
