# Giomaz's config

# Prompt
autoload -U colors && colors
# PROMPT="%1~ ➜ "
# PROMPT="%1~ λ "
# PROMPT="%B%1~ %%%b "
# PROMPT="%{$fg[green]%}%~ %{$fg[magenta]%}%% %{$reset_color%}"
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

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
