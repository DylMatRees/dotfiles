# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Load aliases
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

export EDITOR="vim"

export ANDROID_HOME=$HOME/android/android-sdk-linux/platform-tools
export PATH=$PATH:$ANDROID_HOME

# virtualenvwrapper settings
export WORKON_HOME=~/.envs
. /bin/virtualenvwrapper.sh

# correct ssh within tmux
function fixssh() {
    eval $(tmux show-env    \
        |sed -n 's/^\(SSH_[^=]*\)=\(.*\)/export \1="\2"/p')
}
