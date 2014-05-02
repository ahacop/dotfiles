### Added by the Heroku Toolbelt
VIM=$HOME/.vim
VIMRUNTIME=$HOME/.vim
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/share/npm/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/Users/ahacop/bin:$PATH
export PATH=./bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export EDITOR=vim

source ~/.git-completion.bash
source ~/.git-prompt.sh
source ~/.aliases

export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend
export PROMPT_COMMAND='history -a'

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

function gitvim {
  vim -p $(git st --short | awk ' { print $2 } ')
}

export PGHOST=localhost
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
