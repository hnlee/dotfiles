export CLICOLOR=1

export CUDA_HOME=/usr/local/cuda

export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:~/.local/bin:$PATH

export CLASSPATH=.:./bin:$CUDA_HOME/bin:$HOME/java/junit-4.12.jar:$HOME/java/hamcrest-core-1.3.jar:$HOME/java/jmock-1.2.0/jmock-cglib-1.2.0.jar:$HOME/java/jmock-1.2.0/jmock-core-1.2.0.jar:$CLASSPATH

export PYTHONPATH=/usr/local/lib/python3.6/site-packages:/usr/local/lib/python2.7/site-packages

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

export WORKON_HOME=~/.virtualenvs

source /usr/local/bin/virtualenvwrapper.sh

[[ $TERM != "screen" ]] && exec tmux

eval "$(rbenv init -)"

set -o vi
bind '"fj":vi-movement-mode'
bind '"jf":vi-movement-mode'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH="/usr/local/opt/mysql\@5.5/bin:$PATH"
export DYLD_LIBRARY_PATH="/usr/local/opt/mysql\@5.5/lib:$DYLD_LIBRARY_PATH"
