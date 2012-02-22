def produce_chain(num)
  chain_array = []
  while(num != 1)
    if(num % 2 == 0)
      num = num / 2
    else
      num = (3 * num) + 1
    end
    chain_array << num
  end
end

chain_arrays = []
test_number = 1_000_000
while(test_number != 1)
  chain_arrays << produce_chain(test_number)
  test_number -= 1
end
puts chain_arrays.compact.map {|arr| arr.length}.sort.last
