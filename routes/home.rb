# frozen_string_literal: true

# Home route
class Home < Sinatra::Base
  get '/' do
    json message: 'hello world'
  end

  get '/ok' do
    browser = Scrapers::Manager.browse_available
    browser.visit('https://www.youtube.com/')
    browser.available!
  end
end
