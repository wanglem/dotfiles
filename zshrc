#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
setopt APPEND_HISTORY
## for sharing history between zsh processes
# setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

# User Specific setups

alias ls='ls -Gph'
alias curl='curl -s '
alias ll='ls -lhct'
gp ()
{
    if [ -z "${1}" ]; then
        dir="master";
    else
        dir="${1}";
    fi;
    CMD="git pull origin $dir && git fetch origin && git st";
    eval "${CMD}"
}
export PS1="[dev] %n@%m %d"$'\n'"$ "
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.zhistory
setopt HIST_IGNORE_ALL_DUPS
setopt EXTENDED_HISTORY
