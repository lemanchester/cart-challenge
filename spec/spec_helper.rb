require 'bundler/setup'

require 'cart'
require 'product'

$: << File.expand_path('../lib', __FILE__)


RSpec.configure do |config|

  config.order = :random

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
    mocks.verify_partial_doubles = false
  end
end
