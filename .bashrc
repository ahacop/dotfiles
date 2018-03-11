export PGHOST=localhost
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export ANDROID_HOME=$HOME/Library/Android/sdk

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$HOME/go/bin
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=$HOME/.fastlane/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

[[ -e /usr/local/opt/chruby/share/chruby/chruby.sh ]] && source /usr/local/opt/chruby/share/chruby/chruby.sh
[[ -e /usr/local/opt/chruby/share/chruby/auto.sh ]] && source /usr/local/opt/chruby/share/chruby/auto.sh
[[ -e /usr/local/share/chruby/chruby.sh ]] && source /usr/local/share/chruby/chruby.sh
[[ -e /usr/local/share/chruby/auto.sh ]] && source /usr/local/share/chruby/auto.sh

export PATH=$HOME/bin:$PATH
export PATH=./bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
