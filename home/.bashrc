# When an interactive shell that is not a login shell is started, bash reads and executes 
# commands from /etc/bash.bashrc and ~/.bashrc

# *** Environment ***
export EDITOR=vim
export LANG=C
export LC_ALL=C
export TERM=xterm
export PATH=/usr/lib64/ccache/bin:/usr/lib64/ccache:/usr/lib/ccache/bin:/usr/local/git/current/bin:/usr/local/ctags/ctags/bin:/usr/local/svn144/bin:/usr/local/bin:$PATH:/sbin:/usr/sbin
export PAGER="less -s"
export REPO=http://c4svn.sspg.lab.emc.com/svn/repos/csx_top/csx2
# *** Aliases ***
alias gvim="gvim -geometry 145x43"
alias psgrep="ps auxw | grep "
alias grep='LANG=C grep --color=auto' 
alias screen='TERM=vt100 screen'
alias svndiff="svn diff -r PREV:COMMITTED"
# Quick dir listing, latest files/dirs at the bottom
alias ll="ls -lrth"
# Just list directories
alias lld='ls -lUd */'
# What most people want from od (hexdump)
alias hd='od -Ax -tx1z -v'
alias g="egrep --exclude=\*.svn\* -r -n "
alias csdiff='svn diff --diff-cmd diff -x "-uN"'
alias simssh='ssh -i /c4shares/Public/ssh/id_rsa.root root@10.64.75.245'
# Keep 1000 lines in .bash_history (default is 500)
export HISTSIZE=1000
export HISTFILESIZE=1000
export CCACHE_DIR=/tmp/CCACHE
# Ignore duplicate lines.
export HISTCONTROL=ignoredups

export HISTFILE=~/.bash_history-`hostname`

# Forces bash to append to history rather than overwrite
shopt -s histappend 
# Write to history whenever the prompt is displayed
PROMPT_COMMAND='history -a' 

# Show status of last command or pipeline. 
# Also write to history whenever the prompt is displayed
export PROMPT_COMMAND="
       _RES=\${PIPESTATUS[*]};
       _RES_STR='';
       for res in \$_RES; do
           _RES_STR=\" [\$_RES]\";
       done ; history -a"

# Information about escape characters and colors may be found
# here http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
PS1='\[\033[01;34m\]\u@\h \t\[\033[01;34m\] \w \$$_RES_STR\[\033[00m\] '

doit ()
{ 
  CMD=$@
  STATUS=1
  while [ $STATUS != 0 ]
  do
    $CMD
    STATUS=$?
  done
}

pacs() {
	local CL='\\e['
	local RS='\\e[0;0m'

	echo -e "$(pacman -Ss "$@" | sed "
		/^core/		s,.*,${CL}1;31m&${RS},
		/^extra/	s,.*,${CL}0;32m&${RS},
		/^community/	s,.*,${CL}1;35m&${RS},
		/^[^[:space:]]/	s,.*,${CL}0;36m&${RS},
	")"
}
