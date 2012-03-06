require File.expand_path(File.dirname(__FILE__) + '/../util.rb')

def triangle_number(nth)
  nth * (nth + 1) / 2
end

def number_of_divisors(num)
  nod = 0
  sqrt = Math.sqrt(num).to_i
  (1..sqrt).each {|n| nod += 2 if(num % n == 0) }
  nod -= 1 if(sqrt**2 == num)
  nod
end

prime_number_table = sieve_upto(4000)
divisor_number = 0
test_triangle = 1
while(divisor_number < 500)
  test_triangle += 1
  divisor_number = number_of_divisors(triangle_number(test_triangle))
end
puts triangle_number(test_triangle)
