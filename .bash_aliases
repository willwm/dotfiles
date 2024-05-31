# TODO: Move this to external config (?)
export COLORTERM=truecolor
export MICRO_TRUECOLOR=1

alias adu='sudo apt update && sudo apt upgrade'
alias ai='sudo apt install'
alias acs='apt search'

alias fd='fdfind'
alias bat='batcat'

alias df='dfc'

alias ip='ip -c'
alias ipa='ip -4 -br addr'


alias ls='exa -h --color=auto'
alias l='ls -F'
alias la='ls -a'
alias ll='ls -alF'

alias pwd='pwd; pwd -P'

alias aliascfg='micro ~/.bash_aliases && source ~/.bash_aliases'

# Function to set terminal title
f2() {
    local title
    if [[ -n "$1" ]]; then
        title="$1"
    else
        title="$PWD"
    fi
    echo -ne "\033]0;$title\007"
}