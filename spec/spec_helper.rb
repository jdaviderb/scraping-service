ENV['RACK_ENV'] = 'test'

require 'simplecov'
SimpleCov.start { load_adapter 'test_frameworks' }

require 'rack/test'
require 'rspec'
require 'json'
require_relative '../bootstrap'
require_relative '../app'

module RSpecMixin
  include Rack::Test::Methods
  def app
    App
  end
end

RSpec.configure { |c| c.include RSpecMixin }
