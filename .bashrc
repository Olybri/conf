export EDITOR=vim
export VISUAL=vim

alias cls=clear
alias md=mkdir
alias cd..="cd .."
alias rm="rm -i"
alias del="trash-put"
alias tls="trash-list"
alias tdu="echo \$(du -sh $HOME/.local/share/Trash | cut -f1) \(\$(tls | wc -l) files\)"

alias gl="git log --oneline --all --graph --decorate"
alias gs="git status -s"

alias ls="ls --show-control-chars -F --color"
alias ll="ls --group-directories-first -lhv"
alias la="ll -A"

alias less="less -R"

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

mc () {
  case "$1" in
    */..|*/../) cd -- "$1";; # that doesn't make any sense unless the directory already exists
    /*/../*) (cd "${1%/../*}/.." && mkdir -p "./${1##*/../}") && cd -- "$1";;
    /*) mkdir -p "$1" && cd "$1";;
    */../*) (cd "./${1%/../*}/.." && mkdir -p "./${1##*/../}") && cd "./$1";;
    ../*) (cd .. && mkdir -p "${1#.}") && cd "$1";;
    *) mkdir -p "./$1" && cd "./$1";;
  esac
}

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/git-prompt.sh

dir='/.' # keep n letters
cwd='$(echo \w|sed -e "s;$HOME;~;" -e "s;\($dir\)[^/]*;\1;g" -e "s;\($dir\)\$;/$(basename \w);")'

# alt_cwd='$(echo $(dirname \w)|sed -e "s;\(/..\)[^/]*;\1;g")/$(basename \w)'
# PS1="\n\e[0m\u in \e[1;32m$cwd\e[0m$(__git_ps1 ':(%s)')\n\e[0;34m>\e[0m "

PROMPT_COMMAND='__git_ps1 "\n\e[0m\u in \e[1;32m$cwd\e[0m" "\n\e[0;34m>\e[0m "'

