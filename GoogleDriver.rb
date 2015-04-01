require 'rspec'
require 'selenium-webdriver'
include RSpec::Expectations

class GoogleDriver

  @driver = nil

  def initialize (driver)
    @driver = driver
    @driver.manage.timeouts.implicit_wait = 10
  end

  def visit
    @driver.navigate.to('https://www.google.co.in/')
    @driver.manage.timeouts.page_load = 10
    @driver.manage.window.move_to(0, 0)
    @driver.manage.window.resize_to(1800, 1800)
    return GoogleDriver.new(@driver)
  end

  def navigate
    return NavBar.new(@driver)
  end

  def quit
    @driver.quit
  end

  def title
    return @driver.title
  end

  def find(how, what)
    @driver.find_element(how, what)
  end

  def wait_for(how, what)
    Selenium::WebDriver::Wait.new(:timeout => 5).until { @driver.find_element(how, what) }
  end

  def script_timeout
    @driver.manage.timeouts.script_timeout = 15
  end

  def implicit_wait
    @driver.manage.timeouts.implicit_wait = 15
  end

  def page_load
    @driver.manage.timeouts.page_load = 15
  end

  def element_present?(how, what)
    @driver.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    raise 'The Element ' + what + ' is not available'
  end

  def element_not_present?(how, what)
    @driver.find_element(how, what)
    raise 'The Element ' + what + ' is available'
  rescue Selenium::WebDriver::Error::NoSuchElementError
      true
  end

  def click_on(how, what)
    @driver.find_element(how, what).click
  end

  def clear(locator)
    find(locator).clear
  end

  def type(locator, input)
    find(locator).send_keys input
  end

  def displayed?(locator)
    @driver.find_element(locator).displayed?
    true
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
  end

  def text_of(locator)
    find(locator).text
  end

  def alert_present?()
    @driver.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end

  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end

  def close_alert_and_get_its_text(how, what)
    alert = @driver.switch_to().alert()
    alert_text = alert.text
    if (@accept_next_alert) then
      alert.accept()
    else
      alert.dismiss()
    end
    alert_text
  ensure
    @accept_next_alert = true
  end
end
