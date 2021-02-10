highlight clear
if exists("syntax_on")
  syntax reset
endif

if $TERM == "xterm-256color"
  set t_Co=256
endif

set background=dark

highlight Special ctermfg=magenta gui=none
highlight Comment ctermfg=green cterm=bold
highlight String  ctermfg=red
highlight Identifier ctermfg=lightblue gui=NONE cterm=NONE term=NONE 
highlight Define ctermfg=magenta
highlight Include ctermfg=magenta
