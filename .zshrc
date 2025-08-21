export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rokit/bin:$PATH"

export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

KEYTIMEOUT=1

bindkey -v
bindkey -rpM viins "^[^["

zle -N toggle_sudo
toggle_sudo() {
  if [[ $LBUFFER == sudo\ * ]]; then
    LBUFFER="${LBUFFER#sudo }"
  else
    LBUFFER="sudo $LBUFFER"
  fi
}

bindkey "^@" toggle_sudo
bindkey "^R" history-incremental-search-backward
bindkey '^[[Z' reverse-menu-complete

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
