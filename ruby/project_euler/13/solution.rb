fp = File.open(File.expand_path(File.dirname(__FILE__)) + '/numbers.txt', 'r')
numbers = []
fp.each_line {|line| numbers << line.to_i}

puts numbers.inject(:+).to_s[0..9]
