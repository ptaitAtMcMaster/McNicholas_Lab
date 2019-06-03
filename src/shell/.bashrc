# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
module load nixpkgs/16.09  gcc/7.3.0 julia/1.0.2 r/3.5.2

if [ -f ~/.bash_aliases ]; then
      	. ~/.bash_aliases
fi
