export ZSH="/home/prybiec/.oh-my-zsh"

#ZSH_THEME="cypher"
PROMPT='%F{colour255}%n%F{cyan}@%F{colour255}%m%f:%F{cyan}%b%~%b%f$ '

plugins=(git)

source $ZSH/oh-my-zsh.sh

killd () {
    for session in $(screen -ls | grep -o '[0-9]\{4\}')
    do
        screen -S "${session}" -X quit;
    done
}

