[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s /Users/ahacop/.nvm/nvm.sh ]] && . /Users/ahacop/.nvm/nvm.sh # This loads NVM
if [ -z "$SSH_AUTH_SOCK" ]; then
    if [ -e "$HOME/.ssh/id_rsa" ]; then
        keychain --quick --inherit any --agents ssh id_rsa
    fi
    [ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
    [ -f $HOME/.keychain/$HOSTNAME-sh ] && \
       . $HOME/.keychain/$HOSTNAME-sh
fi
source ~/.bashrc
