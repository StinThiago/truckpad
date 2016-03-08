# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Rails.application.load_tasks

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

task :default => :features