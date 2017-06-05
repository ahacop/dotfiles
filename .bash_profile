if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -z "$SSH_AUTH_SOCK" ]; then
    if [ -e "$HOME/.ssh/id_rsa" ]; then
        keychain --quick --inherit any --agents ssh id_rsa
    fi
    [ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
    [ -f $HOME/.keychain/$HOSTNAME-sh ] && \
       . $HOME/.keychain/$HOSTNAME-sh
fi

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

_apex()  {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
  return 0
}

complete -F _apex apex

VIM=$HOME/.vim
VIMRUNTIME=$HOME/.vim
export EDITOR=vim

export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend

source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh
source ~/.aliases

eval "$(direnv hook bash)"
