require 'csv'
alphabet={'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 'E' => 5,
          'F' => 6, 'G' => 7, 'H' => 8, 'I' => 9, 'J' => 10,
          'K' => 11, 'L' => 12, 'M' => 13, 'N' => 14, 'O' => 15,
          'P' => 16, 'Q' => 17, 'R' => 18, 'S' => 19, 'T' => 20,
          'U' => 21, 'V' => 22, 'W' => 23, 'X' => 24, 'Y' => 25,
          'Z' => 26}

fp = File.open(File.expand_path(File.dirname(__FILE__)) + '/names.txt', 'r')
csv_data = CSV.parse(fp.first).flatten.sort
name_scores = []
csv_data.each_with_index do |name,index|
  name_score = name.split('').inject(0) do |total,char|
    total += alphabet[char]
    total
  end
  name_scores << name_score * (index + 1)
  puts "name: #{name}, index: #{index + 1}, name_score: #{name_score}"
end
puts name_scores.inject(:+)
