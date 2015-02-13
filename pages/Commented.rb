require 'selenium-webdriver'
require_relative '../WPDriver'

class Commented < WPDriver

  def initialize(driver)
    @driver = driver
    @driver.manage.timeouts.script_timeout = 15
    @driver.manage.timeouts.implicit_wait = 15
    @driver.manage.timeouts.page_load = 15
  end

  def checkout_recommended_blogs
    @driver.find_element(:link, "blogs we recommend").click
    return Commented.new(@driver)
  end

  def checkout_browsing_posts_by_tag
    @driver.find_element(:link, "Browsing posts by tag").click
    return Commented.new(@driver)
  end
end