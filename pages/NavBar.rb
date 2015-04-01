require_relative '../GoogleDriver'
require_relative '../pages/Gmail'
require_relative '../pages/Images'
require_relative '../pages/GoogleMe'

class NavBar < GoogleDriver

  def initialize (driver)
    super(driver)
  end

  def NavigateToGoogle
    return GoogleMe.new(@driver)
  end

  def NavigateToImages
    @driver.find_element(:link, "Images").click
    return Images.new(@driver)
  end

  def NavigateToGmail
    @driver.find_element(:link, "Gmail").click
    return Gmail.new(@driver)
  end
end