# frozen_string_literal: true

# frozen_string_literal: true

module Scrapers
  # browser manager
  class Manager
    class << self
      def browsers
        @browsers ||= []
      end

      def start(workers:)
        threads = []
        browser_open_number = workers - browsers.select(&:available?).length

        browser_open_number.times do
          threads << Thread.new do
            browser = ::Scrapers::Capybara::Browser.new
            browser.open
            browsers.push(browser)
          end
        end

        threads.join
      end

      def browse_available
        browser = browsers.detect(&:available?)
        browser
      end
    end
  end
end
