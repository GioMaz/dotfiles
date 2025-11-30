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
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.dotnet
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:/opt/jflap/bin"
export PATH="$PATH:/opt/Espressif-IDE-3.5.0-linux.gtk.x86_64/Espressif-IDE"

# Other variables
# export IDF_PATH=$HOME/.espressif
export HOMEBREW_TEMP=/tmp
export EDITOR=nvim
export OPENER=xdg-open
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT=1

# Environments (prefer aliases over environment scripts)
. "$HOME/.cargo/env"
# opaminit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
