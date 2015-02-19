require 'rspec'
require 'selenium-webdriver'
require "awesome_print"
include RSpec::Expectations
require_relative '../pages/NavBar'

RSpec.configure do |config|
  config.color = true
end

describe 'WordPress - Reader' do

  before(:all) do
    ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil
    @app = WPDriver.new(Selenium::WebDriver.for(:chrome))
    # @app = WPDriver.new(Selenium::WebDriver.for(:firefox))
    # @app = WPDriver.new(Selenium::WebDriver.for(:phantomjs))
    @app.script_timeout
    @app.implicit_wait
    @app.page_load
  end

  after(:all) do
    @app.quit
  end

  RSpec.configure do |config|
    config.expect_with :rspec do |c|
      c.syntax = [:should, :expect]
    end
  end

# Test Methods - WordPress [2]
  it 'BLOGS_I_FOLLOW-recommended_blogs' do
      # true.should be(true)
      BIF_recommended_blogs = @app
        .visit
          .login
      expect(BIF_recommended_blogs.title).to be == 'Blogs I Follow — WordPress.com'
      BIF_recommended_blogs.checkout_recommended_blogs
      @app.element_present?(:xpath, "//h2[contains(text(),'Recommended Blogs')]")
  end

  it 'COMMENTS_I_MADE-browsing_posts_by_tag' do
      # true.should be(true)
      CIM_browsing_posts_by_tag = @app
        .skip_login
          .navigateCommentIMadePage
      expect(CIM_browsing_posts_by_tag.title).to be == 'Comments I Made — WordPress.com'
      CIM_browsing_posts_by_tag.checkout_browsing_posts_by_tag
      @app.element_present?(:xpath, "//h2[contains(text(),'Tags')]")
  end

end
