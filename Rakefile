require 'rubygems'
require 'rake/testtask'

# require File.expand_path("../tests/Google.rb", __FILE__)

task :default => :test
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'spec_helper.rb'
end
