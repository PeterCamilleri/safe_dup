require 'rake/testtask'
require "bundler/gem_tasks"

#Run the unit test suite.
Rake::TestTask.new do |t|
  #List out all the test files.
  t.test_files = ["test/safe_dup_tests.rb"]
  t.verbose    = false
end

desc "Run a scan for smelly code!"
task :reek do |t|
  `reek --no-color lib > reek.txt`
end

desc "Fire up an IRB session with safe_dup preloaded."
task :console do
  system "ruby irbt.rb local"
end

desc "What version of safe_dup is this?"
task :vers do |t|
  puts
  puts "safe_dup version = #{SafeDup::VERSION}"
end
