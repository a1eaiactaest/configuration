syntax on 

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set ai
set number
set hlsearch "set hlsearch
set ruler
if $TERM == "xterm-256color"
  set t_Co=256
endif
set background=dark

highlight Special ctermfg=magenta   gui=none
highlight Comment ctermfg=green cterm=bold
highlight String  ctermfg=red
highlight Number  ctermfg=red
highlight Identifier ctermfg=lightblue gui=NONE cterm=NONE term=NONE 
highlight Define ctermfg=magenta
highlight Include ctermfg=magenta

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

