module Utility
  class CommonUtility
    def initialize(page_driver)
      @driver = page_driver
    end

    attr_reader :driver

    def wait_for_page(timeout = Capybara.default_wait_time)


    end

    def navigate_url(url)
      driver.visit url
    end

    #Web Page Utility
    def click_on_link(locator_type)
      # click_link() or click_button
      # locator_type : id or link_text or button_value
      click_link_or_button(locator_type)
    end

    def enter_text(locator, text)
      puts "I searched for capybara"
      driver.fill_in(locator, with: text)

    end

    def select_radio(locator)
      driver.choose(locator)
    end

    def checkbox_check(locator)
      driver.check(locator)
    end

    def checkbox_uncheck(locator)
      driver.uncheck(locator)
    end

    def select_dropdown(locator, option)
      driver.select(locator, from: option)
    end

  #  quering

    def selector(matcher)
      # only support string or text matcher
      driver.has_text?(matcher)
    end

    def page_title(title)
      driver.has_title?(title)
    end

  end
end