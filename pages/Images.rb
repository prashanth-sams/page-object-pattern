require 'selenium-webdriver'
require_relative '../GoogleDriver'

class Images < GoogleDriver

  def initialize(driver)
    # super(driver)
    @driver = driver
    @driver.manage.timeouts.script_timeout = 15
    @driver.manage.timeouts.implicit_wait = 15
    @driver.manage.timeouts.page_load = 15
  end

  def do_image_search
    @driver.find_element(:name, "q").clear
    @driver.find_element(:name, "q").send_keys "Selenium Essentials"
    return GoogleDriver.new(@driver)
  end
end
