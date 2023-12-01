# TODO: Move this to external config (?)
export COLORTERM=truecolor
export MICRO_TRUECOLOR=1


alias adu='sudo apt update && sudo apt upgrade'
alias ai='sudo apt install'
alias acs='apt search'

alias fd='fdfind'
alias bat='batcat'

alias df='dfc'

alias ipaddr='ip -4 -c -br addr'

alias l='ls -F'
alias la='ls -A'
alias ll='ls -alF'
alias ls='exa -h --color=auto'

alias pwd='pwd; pwd -P'

alias aliascfg='micro ~/.bash_aliases && source ~/.bash_aliases'