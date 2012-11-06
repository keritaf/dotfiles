# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"

unsetopt correctall
setopt correct

COMPLETION_WAITING_DOTS="true"

plugins=(git git-flow debian rvm npm)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh-aliases
source /etc/zsh_command_not_found

export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# TexLive paths
PATH=$PATH:/usr/local/texlive/2012/bin/x86_64-linux
MANPATH=$MANPATH:/usr/local/texlive/2012/texmf/doc/man
INFOPATH=$INFOPATH:/usr/local/texlive/2012/texmf/doc/info

