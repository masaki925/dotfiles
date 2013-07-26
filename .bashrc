# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -n "$PS1" ] ; then
  stty werase undef
  bind '"\C-w": backward-kill-word'
fi

alias globalip="curl http://169.254.169.254/latest/meta-data/network/interfaces/macs/`curl http://169.254.169.254/latest/meta-data/network/interfaces/macs/ 2> /dev/null `/ipv4-associations/; echo''"
