ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

unsetopt correctall
setopt correct

COMPLETION_WAITING_DOTS="true"

plugins=(git git-flow debian rvm npm)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

source /etc/zsh_command_not_found
source $HOME/.zsh-aliases
source $HOME/.zsh-local

