# frozen_string_literal: true

require_relative './bootstrap'

# Sinatra main app
class App < Sinatra::Base
  use Home

  run! if app_file == $PROGRAM_NAME
end
