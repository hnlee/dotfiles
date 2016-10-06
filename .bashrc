export CLICOLOR=1

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

export CLASSPATH=.:./bin:$HOME/java/junit-4.12.jar:$HOME/java/hamcrest-core-1.3.jar:$HOME/java/jmock-1.2.0/jmock-cglib-1.2.0.jar:$HOME/java/jmock-1.2.0/jmock-core-1.2.0.jar:$CLASSPATH

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

export WORKON_HOME=~/.virtualenvs

source /usr/local/bin/virtualenvwrapper.sh

[[ $TERM != "screen" ]] && exec tmux

set -o vi 
bind '"fj":vi-movement-mode'
bind '"jf":vi-movement-mode'

