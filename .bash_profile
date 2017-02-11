export PATH=/usr/local/bin:$PATH

alias ls="ls -G"
alias lsa="ls -aG"
alias glo="git log --oneline --decorate"
alias gco="git checkout"
alias gst="git status"
alias gcom="git checkout master"
alias ber="bundle exec rspec"
alias bivend="bundle install --path vendor/bundle"
alias bisystem="bundle install --system"
alias gp!="git pull"
alias purge_folder!="rm -r w"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

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
end
' > ./spec/spec_helper.rb
	rm .rspec
	echo '--color
--require spec_helper
--format documentation
	' > .rspec
}

export PS1="\[\e[38;5;105m\]\u@wyrm: \[\e[38;5;117m\]\w\[\e[38;5;220m\]\$(parse_git_branch) \[\e[38;5;255m\]>\[\e[0m\] "
export PATH="$HOME/.rbenv/bin:$PATH"
