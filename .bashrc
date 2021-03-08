export CLICOLOR=1

export PATH=.:/usr/local/bin:/usr/local/sbin:~/bin:~/.local/bin:$PATH

export PYTHONPATH=/usr/local/lib/python3.6/site-packages:/usr/local/lib/python2.7/site-packages

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
#eval "$(exenv init -)"

set -o vi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export DYLD_LIBRARY_PATH="/usr/local/opt/mysql\@5.5/lib:$DYLD_LIBRARY_PATH"

source ~/git-completion.bash
