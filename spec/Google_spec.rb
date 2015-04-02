require_relative '../pages/NavBar'

RSpec.describe 'Search' do

  before(:all) do
    ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil
    # @app = GoogleDriver.new(Selenium::WebDriver.for(:chrome))
    # @app = GoogleDriver.new(Selenium::WebDriver.for(:firefox))
    @app = GoogleDriver.new(Selenium::WebDriver.for(:phantomjs))
    @app.script_timeout
    @app.implicit_wait
    @app.page_load
  end

  after(:all) do
    @app.quit
  end

# Test Methods - Google [2]
  it 'Google_search' do
      # true.should be(true)
      Google_search = @app
        .visit
        .navigate
          .NavigateToGoogle
      expect(Google_search.title).to be == 'Google'
      Google_search.do_google_search
      # @app.element_present?(:xpath, "//h2[contains(text(),'Recommended Blogs')]")
  end

  it 'Google_image_search' do
      # true.should be(true)
      Google_image_search = @app
        .visit
        .navigate
          .NavigateToImages
      expect(Google_image_search.title).to be == 'Google Images'
      Google_image_search.do_image_search
      # @app.element_present?(:xpath, "//h2[contains(text(),'Tags')]")
  end

  it 'Google_gmail_search' do
      # true.should be(true)
      Google_gmail_search = @app
        .visit
        .navigate
          .NavigateToGmail
      expect(Google_gmail_search.title).to be == 'Gmail'
      Google_gmail_search.login_gmail
      # @app.element_present?(:xpath, "//h2[contains(text(),'Tags')]")
  end
end
