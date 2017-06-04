### Added by the Heroku Toolbelt
VIM=$HOME/.vim
VIMRUNTIME=$HOME/.vim
export PATH="/usr/local/heroku/bin:$PATH"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/Users/ahacop/bin:$PATH
export PATH=./bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export EDITOR=vim

source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh
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

function gitvim {
  vim -p $(git st --short | awk ' { print $2 } ')
}

export PGHOST=localhost

[[ -e /usr/local/opt/chruby/share/chruby/chruby.sh ]] && source /usr/local/opt/chruby/share/chruby/chruby.sh
[[ -e /usr/local/opt/chruby/share/chruby/auto.sh ]] && source /usr/local/opt/chruby/share/chruby/auto.sh
[[ -e /usr/local/share/chruby/chruby.sh ]] && source /usr/local/share/chruby/chruby.sh
[[ -e /usr/local/share/chruby/auto.sh ]] && source /usr/local/share/chruby/auto.sh

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
eval "$(direnv hook bash)"

_apex()  {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
  return 0
}

complete -F _apex apex
