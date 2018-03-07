# Path to your oh-my-zsh installation.
export ZSH=/home/vthiery/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='nvim'
export GIT_EDITOR='nvim'
setopt NO_BEEP
setopt AUTO_PUSHD

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Put all my aliases in a dedicated file
source .zsh_aliases

# Go path
source .zsh_gopath

# Setup pure theme
fpath+=('/usr/lib/node_modules/pure-prompt/functions')
autoload -U promptinit; promptinit
prompt pure

