#!/bin/bash

# *** Environment ***
export EDITOR=vim
export LANG=ru_RU.KOI8-R
export LC_ALL=C
export PATH=/usr/local/bin:$PATH:/sbin:/usr/sbin

# *** Aliases ***
alias gvim="LC_ALL=ru_RU.KOI8-R gvim -geometry 145x43"
alias vim="LC_ALL=ru_RU.KOI8-R vim"
alias psgrep="ps auxw | grep "
alias grep='LANG=C grep --color=auto' 
alias matlab="matlab -glnx86"
# Quick dir listing, recently modified files and directories at the bottom
alias ll="ls -lrth"
# Just list directories
alias lld='ls -lUd */'
# What most people want from od (hexdump)
alias hd='od -Ax -tx1z -v'

# *** Load bash settings ***
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
