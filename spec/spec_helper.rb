require 'coveralls'
require 'capybara/rspec'
require 'capybara/webkit/matchers'
require 'support/factory_girl'
Coveralls.wear!('rails')

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  def sign_in(user)
    visit new_user_session_path
    fill_in 'Login', with: user[:email]
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end

  config.include(Capybara::Webkit::RspecMatchers, :type => :feature)
end
