"setting space as leader key
let mapleader = " "

syntax on
filetype plugin indent on 
set nu
set incsearch
set hlsearch
set noruler
set relativenumber
set wildmenu
set noswapfile
set hidden
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
"split below, right.
set splitbelow splitright
set scrolloff=12
" show arabic text in the proper way.
set termbidi

" from TFL
set nowrap
set  sidescroll=999 sidescrolloff=999

set background=dark
"colorscheme norman
" I'm going to use these pywal weired things for a while...
 colorscheme wal

"""""""""""""""""""""""""""""""""
"#######MAPPING#######
"""""""""""""""""""""""""""""""
"Goyo
nnoremap <leader>g :Goyo<CR>

"fzf
source /usr/share/doc/fzf/examples/fzf.vim
nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>

"source vimrc
nnoremap <leader>r :source $MYVIMRC<CR>
"edit vimrc
nnoremap <leader>e :wincmd v<bar> :e $MYVIMRC<CR>

"changing buffers
map <C-n> :bnext <CR>
map <C-p> :bprevious <CR>

" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

"""""""""""""""""""""""""""""""""
"#######PLUGINS#######
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
"some snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"auto complete for pytho 
Plug 'davidhalter/jedi-vim'
call plug#end()



"nnoremap <leader>p :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" quickly edit colorscheme
nnoremap <leader>t :wincmd v<bar> :find $HOME/.vim/colors/norman.vim<CR>

map <silent><leader>c :w! \| !xelatex "<c-r>%"<CR>


" just testing 
function! Gruvbox()
    colorscheme gruvbox 
    hi normal ctermbg=none
endfunction
call Gruvbox()
