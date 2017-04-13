parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PATH="$HOME/.rbenv/bin:$PATH"

alias edit_bash='vim ~/.bashrc'
alias padon='synclient TouchpadOff=0'
alias padoff='synclient TouchpadOff=1'

alias ls='ls --color=auto'
alias lsa='ls -a'
alias lsl='ls -l'
alias re_bash='source ~/.bashrc'

alias gcob='git checkout -b'
alias gp!='git pull'
alias gco='git checkout'
alias gcom='git checkout master'
alias gadda='git add -A'
alias gdifs='git diff --staged'
alias sdocker='sudo docker'
alias sdcomp='sudo docker-compose'
alias sdcomp_test='sudo docker-compose run web rake test'
alias gst='git status'
alias glo='git log --decorate --oneline'
alias ber='bundle exec rspec'
alias berkt='bundle exec rake test'
alias berk='bundle exec rake'
alias bex='bundle exec'
alias bipvend='bundle install --path=vendor/bundle'
alias gchc='git config --global credential.helper "cache --timeout 10000"'

alias re_xkb='sudo rm -rf /var/lib/xkb/*'

export PS1="\[\e[1m\e[38;5;186m\]\u\[\e[38;5;231m\]@\[\e[38;5;186m\]\h\[\e[38;5;231m\]: \[\e[38;5;35m\]\w\[\e[38;5;227m\]\$(parse_git_branch) \[\e[38;5;255m\]>\[\e[0m\] "
LS_COLORS=$LS_COLORS:'di=1;96:'; export LS_COLORS

customize_rspec!() {
    mv ./spec/spec_helper.rb ./spec/spec_helper.bak
    echo 'RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.filter_run_when_matching :focus
  config.disable_monkey_patching!
  config.warnings = true

  config.order = :random
  Kernel.srand config.seed
end' > ./spec/spec_helper.rb
    rm .rspec
    echo '--color
--format documentation' > .rspec
}

ignore!() {
    echo '
Gemfile.lock
/.config
/test/tmp/
/test/version_tmp/
/tmp/
.ruby-version
.env
/.yardoc/
/_yardoc/
/doc/
/rdoc/
/.bundle/
/vendor/
/lib/bundler/man/
.ruby-version
.ruby-gemset
.rvmrc

.Spotlight-V100
.DS_Store' > .gitignore
}
