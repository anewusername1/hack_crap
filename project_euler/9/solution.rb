# require File.expand_path(File.dirname(__FILE__) + '/../util.rb')
# a = 1
# b = 1
# c = 0
# additive = 0
# while(true)
  # a += 1
  # 367.times do |i|
    # b += i
    # c = Math.sqrt(a**2 + b**2)
    # puts "INNER# a: #{a}; b: #{b}; c: #{c}"
    # next if(c.to_s.split(".").last.to_i > 0)
    # additive = a + b + c.to_i
    # break if(additive >= 1000)
  # end
  # # b = 1
  # if(a > 367 || c > 367)
    # puts "OUTER# a: #{a}; b: #{b}; c: #{c}"
    # c = 1
    # a = 1
  # end
  # break if(additive >= 1000)
# end
# puts "ENDING# a: #{a}; b: #{b}; c: #{c}"
# puts a * b * c

a = 1
b = 1
c = 0
additive = 0
while(true)
  a += 1
  b += 1
  c = Math.sqrt(a**2 + b**2)
  next if(c.to_s.split(".").last.to_i > 0)
  puts "INNER# a: #{a}; b: #{b}; c: #{c}"
  additive = a + b + c.to_i
  break if(additive >= 1000)
end
puts "ENDING# a: #{a}; b: #{b}; c: #{c}"
puts a * b * c
