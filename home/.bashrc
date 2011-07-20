# Load environment
if [ -f ~/.bash_env ]; then
. ~/.bash_env
fi

# Load aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Load functions
if [ -f ~/.bash_functions ]; then
. ~/.bash_functions
fi

# Load bash completions 
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
