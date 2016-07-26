export CLICOLOR=1
export PATH=/usr/local/share/python:$PATH
export CLASSPATH=.:./bin:$HOME/java/junit-4.12.jar:$HOME/java/hamcrest-core-1.3.jar:$CLASSPATH
[[ $TERM != "screen" ]] && exec tmux
