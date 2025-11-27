ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

autoload -U compinit && compinit

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

alias hx='helix'
alias cls='clear'
alias ls="exa -lhbU --git --no-user --icons"
alias ll="exa -lhbaU --git --no-user --icons"

export EDITOR="/usr/bin/helix"
export VISUAL="/usr/bin/helix"
export SUDO_EDITOR="/usr/bin/helix"

export PATH=$PATH:$(go env GOPATH)/bin

autoload -z edit-command-line
zle -N edit-command-line
bindkey -e
bindkey "^E" edit-command-line


# bun completions
[ -s "/home/pedro/.bun/_bun" ] && source "/home/pedro/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Yazi Helper
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
