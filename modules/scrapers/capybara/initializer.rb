require 'capybara'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  preferences = {
    "profile.managed_default_content_settings.images": 2
    # "profile.managed_default_content_settings.javascript": 2
  }

  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { prefs: preferences }
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: caps
  )
end

Capybara.javascript_driver = :chrome
