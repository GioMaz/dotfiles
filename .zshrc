# Giomaz's config

# Prompt
autoload -U colors && colors
PROMPT="%B%{$fg[green]%}%n@%M%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%}$ "

# Editor mode (emacs)
bindkey -e

# History in cache directory:
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Enable autocompletion for capitalization errors:
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

# Load aliases and shortcuts if existent.
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

# PATHS
export EDITOR=nvim
export OPENER=rifle
# export PATH=$PATH:$HOME/.local/bin
