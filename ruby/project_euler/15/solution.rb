require File.expand_path(File.dirname(__FILE__) + '/../util.rb')


def factorialize_it(num)
  factorial_1 = (2..(2*num)).inject(:*)
  factorial_2 = (2..num).inject(:*)
  factorial_1 / (factorial_2 * factorial_2)
end
puts factorialize_it(20)
