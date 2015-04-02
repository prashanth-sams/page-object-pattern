require 'rubygems'
require 'rake/testtask'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
task :spec do
  ruby "spec_helper.rb"
end

# require 'rspec/core'
# require 'rspec'
# include RSpec::Expectations

# require File.expand_path("../tests/Google.rb", __FILE__)
# require File.expand_path('../config/application', __FILE__)

# task :default => [:test]
# task :default => :test
# Rake::TestTask.new do |t|
#   t.libs << 'test'
#   # t.pattern = 'test/**/test_*\.rb'
#   # t.test_files = FileList['test/test*.rb']
#   t.test_files = FileList['tests/Google.rb']
#   t.verbose = true
# end
