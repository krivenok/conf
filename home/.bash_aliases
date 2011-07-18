alias gvim="LC_ALL=ru_RU.KOI8-R gvim -geometry 145x43"
alias vim="LC_ALL=ru_RU.KOI8-R vim"
alias psgrep="ps auxw | grep "
alias grep='LANG=C grep --color=auto' 
alias screen='TERM=vt100 screen'
alias svndiff="svn diff -r PREV:COMMITTED"
# Quick dir listing, latest files/dirs at the bottom
alias ll="ls -lrth"
# The same but show only few the most recently changed files.
alias lll="ls -lrth | tail"
# Just list directories
alias lld='ls -lUd */'
# What most people want from od (hexdump)
alias hd='od -Ax -tx1z -v'
alias g="egrep --exclude=\*.svn\* -r -n "
alias csdiff='svn diff --diff-cmd diff -x "-uN"'
