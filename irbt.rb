# coding: utf-8
# An IRB + safe_dup test bed

require 'irb'

puts "Starting an IRB console with safe_dup loaded."

if ARGV[0] == 'local'
  require_relative 'lib/safe_dup'
  puts "safe_dup loaded locally: #{SafeDup::VERSION}"

  ARGV.shift
else
  require 'safe_dup'
  puts "safe_dup loaded from gem: #{SafeDup::VERSION}"
end

IRB.start
