# When bash is invoked as an interactive login shell, or as a non-interactive shell with the --login option
# it reads this file just after reading /etc/profile.

# *** Load bash settings ***
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
