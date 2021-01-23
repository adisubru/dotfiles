#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|


# Source wal colors
source "$HOME/.cache/wal/colors.sh"
cat ~/.cache/wal/sequences

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Default Programs
export EDITOR="vim"
export PAGER="less"
export TERMINAL="st"
export READER="mupdf"

# Aliases
alias gitdotf='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto'

# export env variables
export PATH=$PATH:$HOME/.local/bin/
export SUDO_ASKPASS=$HOME/.local/bin/dmpass

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Add to history instead of overriding it
shopt -s histappend

# History length
HISTSIZE=1000
HISTFILESIZE=2000

# Shell Prompt
PS1='[\u@\h \W]\$ '

# Color man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
    }

extract () {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2|*.tbz2)   tar xjf "$1"     ;;
            *.tgz|*.tar.gz)     tar xzf "$1"     ;;
            *.bz2)              bunzip2 "$1"     ;;
            *.7z|.rar)          7z x "$1"        ;;
            *.gz)               gunzip "$1"      ;;
            *.tar)              tar xf "$1"      ;;
            *.zip)              unzip "$1"       ;;
            *.Z)                uncompress "$1"  ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
