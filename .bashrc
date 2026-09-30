#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=~/.npm-global/bin:$PATH


# Added by Antigravity CLI installer
export PATH="/home/cookie/.local/bin:$PATH"
