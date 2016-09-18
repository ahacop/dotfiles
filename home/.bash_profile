if [ -z "$SSH_AUTH_SOCK" ]; then
    if [ -e "$HOME/.ssh/id_rsa" ]; then
        keychain --quick --inherit any --agents ssh id_rsa
    fi
    [ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
    [ -f $HOME/.keychain/$HOSTNAME-sh ] && \
       . $HOME/.keychain/$HOSTNAME-sh
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
