require 'selenium-webdriver'
require_relative '../GoogleDriver'

class Gmail < GoogleDriver

  def initialize(driver)
    @driver = driver
    @driver.manage.timeouts.script_timeout = 15
    @driver.manage.timeouts.implicit_wait = 15
    @driver.manage.timeouts.page_load = 15
  end

  def login_gmail
    @driver.find_element(:id, "Email").clear
    # @driver.find_element(:id, "Email").send_keys "xxxxx@xxxx.com"
    @driver.find_element(:id, "Passwd").clear
    # @driver.find_element(:id, "Passwd").send_keys "xxxx"
    @driver.find_element(:id, "signIn").click
    return GoogleDriver.new(@driver)
  end
end
