# Giomaz's config

# Prompt
autoload -Uz colors; colors
PROMPT="%B%{$fg[green]%}%n@%m %{$fg[blue]%}%~ %{$reset_color%}$ %b"

# Editor mode (emacs)
bindkey -e

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Enable completion for capitalization errors:
autoload -Uz compinit; compinit
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select

# Load aliases and shortcuts if existent.
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

# PATH variable
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/opt/nvim-linux-x86_64/bin
export PATH=$PATH:/opt/jflap/bin
export PATH=$PATH:/opt/c3
export PATH=$PATH:/opt/mathsat-5.6.15-linux-x86_64/bin
export PATH=$PATH:/opt/optimathsat-1.7.4-linux-64-bit/bin

# Other variables
export EDITOR=nvim
export OPENER=xdg-open
export HOMEBREW_TEMP=/tmp
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT=1
# export IDF_PATH=$HOME/.espressif

# Environments (prefer aliases over environment scripts)
# cargoinit
# opaminit
# nvminit
