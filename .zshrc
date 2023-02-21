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
alias lastfive='git log --oneline -n5'

# Version managers
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init - )"; fi
if which asdf > /dev/null; then . $(brew --prefix asdf)/libexec/asdf.sh; fi

# Set editor
export EDITOR=nvim

# Docker
source $HOME/.docker/init-zsh.sh || true # Added by Docker Desktop

# Load additional local machine config
if [ -f "$HOME/.zshrc_local" ]; then
  source "$HOME/.zshrc_local"
fi
