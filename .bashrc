#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

export EDITOR=vim
export VISUAL=vim

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/git-prompt.sh

short_dir='/.' # keep n first letters
cwd='$(echo \w|sed -e "s;$HOME;~;" -e "s;\($short_dir\)[^/]*;\1;g" -e "s;\($short_dir\)\$;/$(basename \w);")'
PROMPT_COMMAND='__git_ps1 "\n\e[0m\u in \e[1;32m$cwd\e[0m" "\n\e[0;34m>\e[0m "'

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
