parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

generate_hello_world() {
	touch 'hello_world'
}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias ls='ls --color=tty'
alias lsa='ls -a'
alias bash_reload='source ~/.bashrc'

alias gst='git status'
alias glo='git log --decorate --oneline'
alias ber='bundle exec rspec'
alias bipvend='bundle install --path=vendor/bundle'


export PS1="\[\e[1m\e[38;5;222m\]\u\[\e[38;5;231m\]@\[\e[38;5;222m\]\h\[\e[38;5;231m\]: \[\e[38;5;35m\]\w\[\e[38;5;220m\]\$(parse_git_branch) \[\e[38;5;255m\]>\[\e[0m\] "
LS_COLORS=$LS_COLORS:'di=1;96:'; export LS_COLORS