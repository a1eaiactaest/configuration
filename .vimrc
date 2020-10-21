syntax on 


set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ai
set relativenumber
set incsearch "set hlsearch
set ruler
set t_Co=256
set background=dark


highlight Comment ctermfg=green

" Bindings 
let mapleader = " " " Map space as leader key, default is \

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

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'

call plug#end()
