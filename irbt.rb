# coding: utf-8
# An IRB + safe_dup test bed

require 'irb'
$force_alias_read_line_module = true
require 'mini_readline'

puts "Starting an IRB console with in_array loaded."

if ARGV[0] == 'local'
  require_relative 'lib/safe_dup'
  puts "safe_dup loaded locally: #{SafeDup::VERSION}"

  ARGV.shift
else
  require 'safe_dup'
  puts "safe_dup loaded from gem: #{SafeDup::VERSION}"
end

IRB.start
