# coding: utf-8

require_relative "safe_dup/version"

# Now you too can dup without fear of annoying exceptions!

class Object
  #By default, reference types use the clone method.
  def safe_dup
    dup
  end
end

#For value types, just return self!
module SafeDup
  def safe_dup
    self
  end
end

#Update the Ruby value types.
class Numeric
  include SafeDup
end

class NilClass
  include SafeDup
end

class TrueClass
  include SafeDup
end

class FalseClass
  include SafeDup
end

class Symbol
  include SafeDup
end

class Regexp
  include SafeDup
end

class Thread
  include SafeDup
end
