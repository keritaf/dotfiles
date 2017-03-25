ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"
#ZSH_THEME="amuse"
#ZSH_THEME="af-magic"

CASE_SENSITIVE="false"

COMPLETION_WAITING_DOTS="true"

plugins=(gitfast git-flow rvm npm command-not-found rake gem bundle dircycle rsync docker docker-compose)

source "$ZSH/oh-my-zsh.sh"

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

[[ -f "$HOME/.zsh-aliases" ]] && source "$HOME/.zsh-aliases"
[[ -f "$HOME/.zsh-local" ]] && source "$HOME/.zsh-local"



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
