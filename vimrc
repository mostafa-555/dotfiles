"setting space as leader key
let mapleader = " "

syntax on
filetype plugin indent on 
set nu
set laststatus=2
"set noshowmode
set showmode
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
"set statusline=2
set shiftwidth=4 softtabstop=4 expandtab
"split below, right.
set splitbelow splitright
set scrolloff=8
let g:netrw_banner = 0
let g:netrw_winsize = 25



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


" Solarized Dark
syntax enable
set t_Co=256
"let g:solarized_termcolors=16
"let g:solarized_termtrans=1
set background=dark
colorscheme norman
"""""""""""""""""""""""""""""""""
"#######PLUGINS#######
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
"Plug 'ap/vim-css-color'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
call plug#end()



"TESTing
let g:lightline = {
      \ 'colorscheme': 'simpleblack',
      \ }
"
"colorscheme default
"hi ColorColumn ctermbg=black

nnoremap <leader>p :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

nnoremap <leader>t :wincmd v<bar> :find $HOME/.vim/colors/norman.vim<CR>
