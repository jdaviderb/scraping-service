require 'rack/test'
require 'rspec'
require 'json'

ENV['RACK_ENV'] = 'test'

require_relative '../app'

module RSpecMixin
  include Rack::Test::Methods
  def app
    App
  end
end

RSpec.configure { |c| c.include RSpecMixin }
