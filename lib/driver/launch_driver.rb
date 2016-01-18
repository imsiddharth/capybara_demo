module CreateDriver
  def page_driver
    @driver = Capybara::Session.new(:selenium)
  end

  def driver
    @driver
  end

  def launch_capybara_driver
    page_driver
  end
end
