# coding: utf-8

require_relative "safe_dup/version"

# Now you too can dup objects without fear of annoying exceptions!
class Object
  #By default, reference types use the dup method.
  def safe_dup
    dup
  end
end

# For value types, just return self!
module SafeDup
  def safe_dup
    self
  end
end

# Numeric can now safe dup.
class Numeric
  include SafeDup
end

# NilClass can now safe dup.
class NilClass
  include SafeDup
end

# TrueClass can now safe dup.
class TrueClass
  include SafeDup
end

# FalseClass can now safe dup.
class FalseClass
  include SafeDup
end

# Symbols can now safe dup.
class Symbol
  include SafeDup
end

# Regular expressions can now safe dup.
class Regexp
  include SafeDup
end

# Threads can now safe dup.
class Thread
  include SafeDup
end
