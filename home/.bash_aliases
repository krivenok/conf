################################################################################
###                                Generic                                   ###
################################################################################
alias gvim="gvim -geometry 145x43"
# What most people want from od (hexdump)
alias hd='od -Ax -tx1z -v'
################################################################################
###                                 Search                                   ###
################################################################################
alias grep='LANG=C grep -P --color=auto'
alias psgrep="ps auxw | grep -P "
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
###                                     SSH                                  ###
################################################################################
alias vssh='TERM=linux ssh -i /c4shares/Public/ssh/id_rsa.root -l root'
alias vscp='scp -i /c4shares/Public/ssh/id_rsa.root'
################################################################################
###                            AccuRev                                       ###
################################################################################
alias fast_build_all='CFG_NO_SETUPWSPACE=1 CFG_NO_CMVERSION=1 /c4shares/auto/devutils/bin/build_all -t GNOSIS -f DEBUG'
################################################################################
###                                                                          ###
################################################################################
