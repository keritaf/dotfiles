ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

plugins=(gitfast git-flow debian rvm npm sublime command-not-found rake gem bundle)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

source $HOME/.zsh-aliases
source $HOME/.zsh-local

