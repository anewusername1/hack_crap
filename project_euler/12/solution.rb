require File.expand_path(File.dirname(__FILE__) + '/../util.rb')

def triangle_number(nth)
  nth.downto(1).inject(:+)
end

divisor_number = 0
test_triangle = 300
while(divisor_number < 500)
  test_triangle += 1
  divisor_number = divisors(triangle_number(test_triangle)).length
  puts "test_triangle: #{test_triangle}; divisor_number: #{divisor_number}"
end
puts test_triangle
