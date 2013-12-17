ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

COMPLETION_WAITING_DOTS="true"

plugins=(gitfast git-flow rvm npm command-not-found rake gem bundle dircycle rsync)

source "$ZSH/oh-my-zsh.sh"

export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

[[ -f "$HOME/.zsh-aliases" ]] && source "$HOME/.zsh-aliases"
[[ -f "$HOME/.zsh-local" ]] && source "$HOME/.zsh-local"


