export TERM=xterm-256color

alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias md='mkdir'

# Aliases
killd () {
    for session in $(screen -ls | grep -o '[0-9]\{3,\}')
    do
        screen -S "${session}" -X quit;
    done
}
export PS1='\[\e[01;37m\]\u\[\e[01;37m\]@\[\e[01;37m\]\h\[\e[01;37m\]:\[\e[1;36m\]\w\[\e[01;37m\]$ \[\e[01;0m\]'
export EDITOR='vim'

# Fix screen no permission error
export SCREENDIR=$HOME/.screen

# Mark executables red
LS_COLORS=$LS_COLORS:'ex=0;31:' ; export LS_COLORS
