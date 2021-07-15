# alias
alias ll='ls -ltr'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ..2='cd ../..'
alias ..3='cd ../../..'

alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'

alias dotfiles='/path/to/dotfiles'

alias mem='top -o rsize'
alias cpu='top -o cpu'

alias cp='cp -ip'
alias mv='mv -ip'
alias rm='rm -i'


#history
HISTTIMEFORMAT='%Y-%m-%dT%T%z '
HISTSIZE=100000
HISTFILESIZE=100000
HISTIGNORE='history:pwd:ls:ls *:ll:w:top:df *'
HISTCONTROL=ignoreboth
PROMPT_COMMAND='history -a; history -c; history -r'


# windows(git bash)
export MSYS=winsymlinks:nativestrict
