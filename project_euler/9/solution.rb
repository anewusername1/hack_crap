require File.expand_path(File.dirname(__FILE__) + '/../util.rb')
a = 1
b = 1
c = 0
additive = 0
while(true)
  a += 1
  1000.times do |i|
    b = 0 if(b > 1000)
    b = 0 if(c > 1000)
    b += 1
    c = Math.sqrt(a**2 + b**2)
    next if(c.to_s.split(".").last.to_i > 0)
    additive = a + b + c.to_i
    break if(additive >= 1000)
  end
  break if(additive == 1000)
  b = 1
  a = 1 if(a > 1000)
  c = 1 if(c > 1000)
end
puts (a * b * c).to_i
