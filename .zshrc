export ZSH="/Users/ddigangi/.oh-my-zsh"
ZSH_THEME=""

### Pure Theme ###
autoload -U promptinit; promptinit
prompt pure

plugins=(git vscode)

source $ZSH/oh-my-zsh.sh

### NVM ###
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

#### PYTHON ####
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PATH="/usr/local/share/python:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

### Homebrew ###
export PATH=$HOME/bin:/usr/local/bin:$PATH

### VS Code ###
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

export ENV='lcl'
export NODE_ENV='development'
export PORT='8080'

#### Aliases ####
alias edit='code'
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias branches='git branch | cat'
