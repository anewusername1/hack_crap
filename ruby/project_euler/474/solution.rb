# For a positive integer n and digits d, we define F(n, d) as the number of the divisors of n whose last digits equal d.
# For example, F(84, 4) = 3. Among the divisors of 84 (1, 2, 3, 4, 6, 7, 12, 14, 21, 28, 42, 84), three of them (4, 14, 84) have the last digit 4.
#
# We can also verify that F(12!, 12) = 11 and F(50!, 123) = 17888.
#
# Find F(106!, 65432) modulo (1016 + 61).

require File.expand_path(File.dirname(__FILE__) + '/../util.rb')

class Solution
  include Util
  extend Util

  def self.solve
    new_instance = self.new
    factored = factorial(106)
    numbers_found = new_instance.test_number(factored, 65432)
    numbers_found.count % (1016 + 61)
  end

  def test_number(number, last_digit)
    divisors = factors(number)
    divisors.select {|d| d.to_s[-1].to_i == last_digit}
  end
end

puts Solution.solve
