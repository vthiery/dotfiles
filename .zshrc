# Path to your oh-my-zsh installation.
export ZSH=/home/$USER/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="nicoulaj"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  ag
  git
  docker
)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='nvim'
export GIT_EDITOR='nvim'
setopt NO_BEEP
setopt AUTO_PUSHD
export GPG_TTY=$(tty)

# Aliases
alias vi="nvim"
alias vim="nvim"
alias lla="ls -la"
alias dockrun="docker run --rm -ti"
alias dc="docker-compose"
alias tf="terraform"

# Environment variables
export AWS_SDK_LOAD_CONFIG=1
export GOPATH=$HOME/dev
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# Completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /home/v/.asdf/shims/terraform terraform

# asdf setup
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
