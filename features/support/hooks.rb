Before do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
  @driver.manage.timeouts.implicit_wait = 10
  @driver.manage.timeouts.page_load = 15
  @driver.manage.timeouts.script_timeout = 5
end

After do
 @driver.quit
end