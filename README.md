[ ![Codeship Status for wearehanno/riggings](https://codeship.io/projects/2b1725b0-99b3-0132-9f48-764c5db7a55a/status?branch=master)](https://codeship.com/projects/63713) 
[![Build Status](https://travis-ci.org/prashanth-sams/page-object-pattern.svg?branch=master)](https://travis-ci.org/prashanth-sams/page-object-pattern)

# page-object-pattern
Selenium Ruby | Rspec via Page Objects

**To run Selenium tests, Follow the cmd in Terminal**:

 ```
 rspec --format html --out report.html Google_spec.rb
 ```

> RSpec JUnit Formatter

Install the gem:

 ```
 gem install rspec_junit_formatter
 ```

 ```
 rspec --format RspecJunitFormatter  --out rspec.xml Google_spec.rb
 ```

> Fuubar

Install the gem:

 ```
gem install fuubar
 ```

 ```
 rspec --format Fuubar --color Google_spec.rb
 ```

**To run as test suite, Follow the cmd in Terminal**

 ```
 rspec spec/ -t suite
 rspec spec_helper.rb
 bundle exec rake spec
 ```
