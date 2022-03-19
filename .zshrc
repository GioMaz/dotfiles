# Giomaz's config

# Prompt
autoload -Uz colors; colors
PROMPT="%B%{$fg[green]%}%n@%M %{$fg[blue]%}%~ %{$reset_color%}$ %b"

# Editor mode (emacs)
bindkey -e

# History in cache directory:
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Enable completion for capitalization errors:
autoload -Uz compinit; compinit
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select

# Load aliases and shortcuts if existent.
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

# PATHS
export EDITOR=nvim
export OPENER=xdg-open
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.dotnet
