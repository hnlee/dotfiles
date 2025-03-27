# Turn on colors
export CLICOLOR=1
export BAT_THEME="zenburn"

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
alias reload="source ~/.zshrc"
if which bat > /dev/null; then
  alias cat="bat"
  alias less="bat"
fi
if which rg > /dev/null; then
  alias grep="rg"
fi
if which eza > /dev/null; then
  alias ls="eza --long --grid --all --classify --sort=type"
fi

# Version managers
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init - )"; fi
if which asdf > /dev/null; then . $(brew --prefix asdf)/libexec/asdf.sh; fi

# FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='-m --height 40% --border'

# Set editor
export EDITOR=nvim

# Docker
source $HOME/.docker/init-zsh.sh || true # Added by Docker Desktop

# Load additional local machine config
if [ -f "$HOME/.zshrc_local" ]; then
  source "$HOME/.zshrc_local"
fi

# Set default Docker platform
export DOCKER_DEFAULT_PLATFORM=linux/amd64

# Set up completions
fpath=(~/.zsh/ $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
export GIT_COMPLETION_CHECKOUT_NO_GUESS=1

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

if which aws_completer > /dev/null; then \
  complete -C '/usr/local/bin/aws_completer' aws
fi

