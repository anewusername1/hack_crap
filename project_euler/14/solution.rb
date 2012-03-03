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
  chain_array
end

test_number = 1_000_000
best_number = 0
longest_length = 0
while(test_number != 1)
  chain_length = produce_chain(test_number).length
  if(chain_length > longest_length)
    best_number = test_number
    longest_length = chain_length
  end
  test_number -= 1
end
puts "best number = #{best_number}; longest_length = #{longest_length}"
