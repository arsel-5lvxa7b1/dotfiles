# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/arsel/Library/Application Support/Herd/config/php/84/"

# Herd injected NVM configuration
export NVM_DIR="/Users/arsel/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP binary.
export PATH="/Users/arsel/Library/Application Support/Herd/bin/":$PATH

# Manual below

export PATH="/opt/homebrew/opt/libpq/bin/":$PATH # PostgreSQL client binaries
export PATH="$HOME/bin/":$PATH # User binaries

source "$HOME/.zsh_aliases"

export CLICOLOR=1
export LESS='-R' # Render raw color escapes

# Prompt
PS1="%F{blue}%S %n@macbook %s %F{yellow}%3~ ⟩%f "

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:descriptions' format "%F{yellow}%B--- %d%b%f"
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format "%F{red}No matches found%f"
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'

# Autosuggestions. Needs to be last!
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
