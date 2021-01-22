alias rm=trash

export TERM=xterm-256color
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Aliases
killd () {
    for session in $(screen -ls | grep -o '[0-9]\{3,\}')
    do
        screen -S "${session}" -X quit;
    done
}
export PS1='\[\e[01;37m\]\u\[\e[01;37m\]@\[\e[01;37m\]\h\[\e[01;37m\]:\[\e[01;31m\]\w\[\e[01;37m\]$ \[\e[01;0m\]'
export EDITOR='vim'

# Fix screen no permission error
export SCREENDIR=$HOME/.screen
