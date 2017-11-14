create_gitignore() {
    echo '/.config
.ruby-version
.env
/.bundle/
/vendor/
.ruby-version
.rvmrc

.Spotlight-V100
.DS_Store' > .gitignore
}

tweak_spec_helper() {
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
}

tweak_dotrspec() {
    echo -e "--format documentation\n" >> .rspec
}

create_sample_test() {
    printf "RSpec.describe%1s'RSpec'%1sdo\n%2sit 'is working' do\n%4sexpect(true).to be(true)\n%2send\nend\n" > ./spec/something_spec.rb
}

create_gemfile() {
    echo -e "source 'https://rubygems.org'\n\ngem 'rspec'" >> Gemfile
}

echo 'Creating Gemfile...'
create_gemfile
echo 'Gemfile created. Creating .gitignore...'
create_gitignore
echo '.gitignore created.'
bundle install --path vendor/bundle
echo 'Initializating RSpec...'
bundle exec rspec --init
tweak_spec_helper
tweak_dotrspec
create_sample_test
bundle exec rspec
