# frozen_string_literal: true

module Scrapers
  module Capybara
    # browser
    class Browser
      def initialize(after_visit: nil)
        @client = ::Capybara::Session.new(:selenium)
        @available = true
        @after_visit = after_visit
      end

      def open
        @client.visit('about:blank')
      end

      def available!
        @available = true
      end

      def close
        @client.driver.browser.close
      end

      def visit(url)
        @available = false
        visit = @client.visit(url)
        @after_visit.call if @after_visit
        visit
      end

      def available?
        @available
      end
    end
  end
end
