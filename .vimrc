syntax on 

set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number relativenumber
set nu rnu
set hlsearch "set hlsearch
set ruler
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
if $TERM == "xterm-256color"
  set t_Co=256
endif
set visualbell
set background=dark


"highlight Special ctermfg=magenta   gui=none
"highlight Comment ctermfg=green cterm=bold
"highlight String  ctermfg=red
"highlight Identifier ctermfg=lightblue gui=NONE cterm=NONE term=NONE 
"highlight Define ctermfg=magenta
"highlight Include ctermfg=magenta

" Bindings 
let mapleader = " " " Map space as leader key, default is \

"NERDTree
nnoremap <leader>nn :NERDTree<cr>

" Map hjkl to move between vim windows, not going to use much, use tmux windows instead.
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>

" File tree.
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 40<CR>

" Resizing vertical windows.
"nnoremap <leader>+ :vertical resize +5<CR>
"nnoremap <leader>- :vertical resize -5<CR>

" enable true colors
if (has('termguicolors'))
  set termguicolors
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'

" Material Community theme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" Gruv box
Plug 'morhetz/gruvbox'

" Testing themes
Plug 'ayu-theme/ayu-vim'
call plug#end()

" set theme
let ayucolor='dark'
colorscheme ayu
highlight Normal guibg=#000000
