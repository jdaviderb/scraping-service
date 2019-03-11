# frozen_string_literal: true

# Home route
class Home < Sinatra::Base
  get '/' do
    json message: 'hello world'
  end
end
