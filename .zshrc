# Turn on colors
export CLICOLOR=1

# Keybindings
bindkey -v
bindkey '^R' history-incremental-search-backward

# Style prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%~$vcs_info_msg_0_ $ '
zstyle ':vcs_info:git:*' formats ' %F{green}(%b)%f'
zstyle ':vcs_info:*' enable git

# Aliases
alias vim="nvim"
alias cleanup='git fetch -p && git branch -vv | awk "/: gone]/{print \$1}" | xargs git branch -D'
alias activate='source $HOME/.venv/audere/bin/activate'

# Version managers
eval "$(pyenv init -)"
#eval "$(nodenv init -)"
export PATH="$HOME/.tfenv/bin:$PATH"
#export PATH="$HOME/.nodenv/bin:$PATH"

# Credentials
export AWS_SHARED_CREDENTIALS_FILE="$HOME/.aws/audere-session-token"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

