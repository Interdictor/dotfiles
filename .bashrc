parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

ignore_() {
    echo '
.Spotlight-V100
.DS_Store' > .gitignore
}

alias ls='ls --color=auto'

alias gcom='git checkout master'
alias gst='git status'
alias glo='git log --decorate --oneline'
alias bipvend='bundle install --path=vendor/bundle'

BROWN="\e[38;5;180m\]"
WHITE="\e[38;5;231m\]"
BOLD="1m"
GREEN="\e[38;5;35m\]"
BRIGHT_YELLOW="\e[38;5;227m\]"
RESET="\e[0m\]"

export PS1="\[\e[${BOLD}${BROWN}\u\[${WHITE}@\[${BROWN}\h\[${WHITE}: \[${GREEN}\w\[${BRIGHT_YELLOW}\$(parse_git_branch) \[${WHITE}>\[${RESET} "
LS_COLORS=$LS_COLORS:'di=1;96:'; export LS_COLORS
