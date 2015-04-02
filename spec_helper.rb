# ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil
require File.expand_path("../spec/Google_spec.rb", __FILE__)

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.color = true

end
