#!/usr/bin/env zsh

# load into PATH variables
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

#if [ -f ~/.bashrc ]; then
#  . ~/.bashrc
#fi

#mesg n

# run inxi information tool
#if [ -x "`which inxi 2>&1`" ]; then
#    inxi -IpRS -v0 -c5
#fi


# AutostartX at login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

