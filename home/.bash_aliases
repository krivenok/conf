################################################################################
###                                Generic                                   ###
################################################################################
alias gvim="LC_ALL=ru_RU.KOI8-R gvim -geometry 145x43"
alias vim="LC_ALL=ru_RU.KOI8-R vim"
alias screen='TERM=vt100 screen'
# What most people want from od (hexdump)
alias hd='od -Ax -tx1z -v'
################################################################################
###                                 Search                                   ###
################################################################################
alias grep='LANG=C egrep --color=auto' 
alias g="LANG=C egrep --color=auto --exclude=\*.svn\* -r -n "
alias psgrep="ps auxw | egrep "
################################################################################
###                         File system listings                             ###
################################################################################
# Quick dir listing, latest files/dirs at the bottom
alias ll="ls -lrth"
# The same but show only few the most recently changed files.
alias lll="ls -lrth | tail"
# Just list directories
alias lld='ls -lUd */'
################################################################################
###                                 Diff tools                               ###
################################################################################
alias csdiff='svn diff --diff-cmd diff -x "-uN"'
alias svndiff="svn diff -r PREV:COMMITTED"
################################################################################
###                                                                          ###
################################################################################
