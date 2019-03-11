require 'sinatra/base'
require 'sinatra/json'

# modules
require_relative './modules/scrapers/capybara/initializer'
require_relative './modules/scrapers/capybara/browser'
require_relative './modules/scrapers/manager'

# routes
require_relative './routes/home'

# start browser manager
Scrapers::Manager.start workers: 5 unless ENV['RACK_ENV'] == 'test'
