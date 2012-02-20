require 'matrix'
require File.expand_path(File.dirname(__FILE__) + '/../util.rb')
upper_limit = 10**999
i = 1
i += 1 while(fib(i) < upper_limit)
puts i
# while i < upper_limit
  # fib_num = fib(i).to_s
  # if(fib_num.length > 1000)
    # puts fib_num
    # break
  # end
# end
