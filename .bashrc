#
# ~/.bashrc
#

stty -ixon
export TERMINAL="termite"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[1;36m[\u@\h \W]\e[m\$ '

eval "$(dircolors ~/.dircolors)";

export DESKTOP_SESSION="i3"

export HISTCONTROL=ignoredups

screenfetch -w
