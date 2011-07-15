# Keep 1000 lines in .bash_history (default is 500)
export HISTSIZE=1000
export HISTFILESIZE=1000

# Ignore duplicate lines.
export HISTCONTROL=ignoredups

# Forces bash to append to history rather than overwrite
shopt -s histappend 
# Write to history whenever the prompt is displayed
PROMPT_COMMAND='history -a' 

# Information about escape characters and colors may be found
# here http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
PS1='\[\033[01;34m\]\u@\h \t\[\033[01;34m\] \w \$\[\033[00m\] '
