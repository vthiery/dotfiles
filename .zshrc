# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation.
export ZSH=/home/$USER/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# oh-my-zsh plugins

## Tmux
export ZSH_TMUX_CONFIG=$HOME/.config/tmux/config
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_UNICODE=true

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

export GOPATH=$HOME/dev
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

export GPG_TTY=$(tty)
export AWS_SDK_LOAD_CONFIG=1

# Aliases
alias vi="nvim"
alias vim="nvim"
alias lla="ls -la"

autoload -U +X bashcompinit && bashcompinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
