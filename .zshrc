test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval "$(starship init zsh)"

# Exports
export EDITOR='micro'
export VISUAL='micro'

# Aliases
alias ls='exa'
alias la='ls -la'
alias ll='ls -l'
alias df='dfc'
