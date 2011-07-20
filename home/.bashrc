# *** Environment ***
export EDITOR=vim
export LANG=ru_RU.KOI8-R
export LC_ALL=C
export PATH=/usr/local/bin:$PATH:/sbin:/usr/sbin
export PAGER="less -s"
export TERM=xterm
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

# Load aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Load functions
if [ -f ~/.bash_functions ]; then
. ~/.bash_functions
fi
