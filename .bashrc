# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Load aliases
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

export ANDROID_HOME=$HOME/android/android-sdk-linux/platform-tools
export PATH=$PATH:$ANDROID_HOME

# virtualenvwrapper settings
export WORKON_HOME=~/.envs
. /home/tom/.local/bin/virtualenvwrapper.sh
