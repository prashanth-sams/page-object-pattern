require 'rubygems'
require 'rake/testtask'

task :default => :test
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'spec_helper.rb'
end
