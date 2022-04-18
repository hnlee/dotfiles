bindkey -v
bindkey '^R' history-incremental-search-backward

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%~$vcs_info_msg_0_ $ '
zstyle ':vcs_info:git:*' formats ' %F{green}(%b)%f'
zstyle ':vcs_info:*' enable git

export AWS_SHARED_CREDENTIALS_FILE="$HOME/.aws/audere-session-token"
eval "$(pyenv init -)"
eval "$(nodenv init -)"

alias vim="nvim"
