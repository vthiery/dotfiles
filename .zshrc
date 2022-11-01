# Path to oh-my-zsh installation.
export ZSH=/home/$USER/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="nicoulaj"

# oh-my-zsh plugins
plugins=(
  ag
  asdf
  aws
  docker
  gh
  git
  golang
  nomad
  terraform
  tmux
  vault
)

source $ZSH/oh-my-zsh.sh

# User configuration
setopt NO_BEEP
setopt AUTO_PUSHD

# Environment variables
export EDITOR='nvim'
export GIT_EDITOR='nvim'
export GPG_TTY=$(tty)
export AWS_SDK_LOAD_CONFIG=1
export GOPATH=$HOME/dev
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# Aliases
alias vi="nvim"
alias vim="nvim"
alias lla="ls -la"

autoload -U +X bashcompinit && bashcompinit
