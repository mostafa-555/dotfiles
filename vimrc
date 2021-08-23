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
" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=magenta
  elseif a:mode == 'r'
    hi statusline guibg=blue
  else
    hi statusline guibg=red
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=green

" default the statusline to green when entering Vim
hi statusline guibg=green
