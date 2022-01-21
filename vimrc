"setting space as leader key
let mapleader = " "

syntax on
filetype plugin indent on 
set nu
set incsearch
set hlsearch
set ruler
set relativenumber
set wildmenu
set noswapfile
set hidden
set shiftwidth=4 softtabstop=4 expandtab
"split below, right.
set splitbelow splitright
set scrolloff=12

"Goyo
nnoremap <leader>g :Goyo<CR>

"fzf
source /usr/share/doc/fzf/examples/fzf.vim
nnoremap <leader>f :FZF<CR>

"source vimrc
nnoremap <leader>r :source $MYVIMRC<CR>
"edit vimrc
nnoremap <leader>e :wincmd v<bar> :e $MYVIMRC<CR>

"changing buffers
map <C-n> :bnext <CR>
map <C-p> :bprevious <CR>

set background=dark
colorscheme norman

"""""""""""""""""""""""""""""""""
"#######PLUGINS#######
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'chrisbra/Colorizer'
Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'
call plug#end()



nnoremap <leader>p :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" quickly edit colorscheme
nnoremap <leader>t :wincmd v<bar> :find $HOME/.vim/colors/norman.vim<CR>
