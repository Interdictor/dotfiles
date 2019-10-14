case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls --color=auto'

alias gcom='git checkout master'
alias gst='git status'
alias glo='git log --pretty=format:"%C(#6c82d5)%h %C(#ebcc88)%an %Creset%s"'
alias glox='git log --pretty=format:"%C(#baac8b)%d %C(#6c82d5)%h %C(#c8c5bb)%aI %C(#ebcc88)%an %Creset%s"'
alias bipvend='bundle install --path=vendor/bundle'
alias prune_branches='git remote prune origin && git branch | grep -v "master" | xargs git branch -D'
alias dockerpython='docker run --rm -ti python:3.6.9-slim-buster'
alias dockernode='docker run --rm -ti node:10.16.3-buster-slim'
alias dockeryolo='docker build . -t yolo && docker run --rm -ti yolo'
alias dockerruby='docker run --rm -ti ruby:2.6.4-slim-buster'

BROWN="\e[38;5;180m\]"
WHITE="\e[38;5;231m\]"
BOLD="1m"
GREEN="\e[38;5;35m\]"
BRIGHT_YELLOW="\e[38;5;227m\]"
RESET="\e[0m\]"

export PS1="\[\e[${BOLD}${BROWN}\u\[${WHITE}@\[${BROWN}\h\[${WHITE}: \[${GREEN}\w\[${BRIGHT_YELLOW}\$(parse_git_branch) \[${WHITE}$\[${RESET} "
LS_COLORS=$LS_COLORS:'di=1;96:'; export LS_COLORS
