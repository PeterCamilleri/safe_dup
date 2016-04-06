require "benchmark/ips"
require 'safe_dup'

class Array
  def use_dup
    self.map do |element|
      begin
        element.dup
      rescue TypeError
        element
      end
    end
  end

  def use_safe_dup
    self.map {|element| element.safe_dup }
  end
end

X = ["Test", :test, 43, true, nil, false]

Benchmark.ips do |x|
  x.report("Dup with standard clone method") { X.use_dup }
  x.report("Dup with the safe clone method") { X.use_safe_dup }
  x.compare!
end
