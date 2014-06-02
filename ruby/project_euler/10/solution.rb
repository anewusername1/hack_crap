require File.expand_path(File.dirname(__FILE__) + '/../util.rb')
class Solution
  include Util

  def self.solve
    primes = sieve_upto(2_000_000)
    primes.inject(:+)
  end
end
puts Solution.solve
