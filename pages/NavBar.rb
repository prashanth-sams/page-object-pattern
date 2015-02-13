require_relative '../WPDriver'
require_relative '../pages/Commented'

class NavBar < WPDriver

  def initialize (driver)
    super(driver)
  end

  def navigateCommentIMadePage
    @driver.find_element(:link, "Comments I Made").click
    return Commented.new(@driver)
  end

  def navigatePostsILikePage
    @driver.find_element(:link, "Posts I Like").click
    # return Liked.new(@driver)
  end

  def navigateFreshlyPressedPage
    @driver.find_element(:link, "Freshly Pressed").click
    # return FreshlyPressed.new(@driver)
  end

  def navigateRecommendedBlogsPage
    @driver.find_element(:link, "Recommended Blogs").click
    # return RecommendedBlogs.new(@driver)
  end

  def navigateFindFriendsPage
    @driver.find_element(:link, "Find Friends").click
    # return FindFriends.new(@driver)
  end
end