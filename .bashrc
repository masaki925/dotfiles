# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -n "$PS1" ] ; then
  stty werase undef
  bind '"\C-w": backward-kill-word'
fi
