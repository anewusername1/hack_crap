numbers = [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2]
test_number = 2520
divided = false
until(divided)
  truthy_falsey = numbers.collect do |num|
    test_number % num == 0
  end
  if(truthy_falsey.uniq.length == 1 && truthy_falsey.uniq.first == true)
    break
  end
  test_number += 2520
end
puts test_number
