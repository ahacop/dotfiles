PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
VIM=$HOME/.vim
VIMRUNTIME=$HOME/.vim
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/share/npm/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH
export PATH=/Users/ahacop/bin:$PATH
export PATH=./bin:$PATH
export EDITOR=vim

source ~/.git-completion.bash
source ~/.git-prompt.sh
source ~/.aliases

HISTCONTROL=ignoreboth

function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

function git_st {
  echo "Use g" && git st
}
