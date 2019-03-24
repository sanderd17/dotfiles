#
# ~/.bashrc
#

stty -ixon
export TERMINAL="termite"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(dircolors ~/.dircolors)";

export DESKTOP_SESSION="i3"

screenfetch -w
