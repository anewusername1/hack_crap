file = File.open(File.expand_path(File.dirname(__FILE__)) + '/1000_digit_number.txt', 'r')
number = file.read.chomp
sums = []
(number.length - 5).times do |i|
  number_array = number[i..i+4].split('').map {|n| n.to_i}
  sums << number_array.inject(:*)
end
puts sums.sort.last
