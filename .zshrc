# Path to your oh-my-zsh installation.
export ZSH="/Users/cameronbrill/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	git
	thefuck
	zsh-autosuggestions
	history-substring-search
)

source $ZSH/oh-my-zsh.sh

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Golang stuff
export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# kubernetes
alias k="kubectl"

# fuck
eval $(thefuck --alias)
eval $(thefuck --alias FUCK)

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
