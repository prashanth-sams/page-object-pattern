require 'selenium-webdriver'
require_relative '../GoogleDriver'

class GoogleMe < GoogleDriver

  def initialize(driver)
    @driver = driver
    @driver.manage.timeouts.script_timeout = 15
    @driver.manage.timeouts.implicit_wait = 15
    @driver.manage.timeouts.page_load = 15
  end

  def do_google_search
    @driver.find_element(:id, "lst-ib").clear
    @driver.find_element(:id, "lst-ib").send_keys "Sysvine Technologies"
    return GoogleDriver.new(@driver)
  end
end