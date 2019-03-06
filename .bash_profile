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
source ~/.functions

eval "$(direnv hook bash)"

# Make less the default pager, and specify some useful defaults.
less_options=(
  # If the entire text fits on one screen, just show it and quit. (Be more
  # like "cat" and less like "more".)
  --quit-if-one-screen

  # Do not clear the screen first.
  --no-init

  # Like "smartcase" in Vim: ignore case unless the search pattern is mixed.
  --ignore-case

  # Do not automatically wrap long lines.
  --chop-long-lines

  # Allow ANSI colour escapes, but no other escapes.
  --RAW-CONTROL-CHARS

  # Do not ring the bell when trying to scroll past the end of the buffer.
  --quiet

  # Do not complain when we are on a dumb terminal.
  --dumb
);
export LESS="${less_options[*]}";
unset less_options;
export PAGER='less';
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
