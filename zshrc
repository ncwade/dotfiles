# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
ZSH_THEME="sorin"
plugins=(git tmux docker vagrant)
source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
setopt AUTO_CD

# Some people put alias(s) in a different file. I laugh at this sensible choice.
alias tmux="tmux -2"
