ONES_ARRAY = {
  1 => 'one', 2 => 'two', 3 => 'three',
  4 => 'four', 5 => 'five', 6 => 'six',
  7 => 'seven', 8 => 'eight', 9 => 'nine',
}

TEENS_ARRAY = {
  11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
  14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
  17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

TENS_ARRAY = {
  20 => 'twenty', 30 => 'thirty', 40 => 'forty',
  50 => 'fifty', 60 => 'sixty', 70 => 'seventy',
  80 => 'eighty', 90 => 'ninety'
}

def translate(number)
  count = 0
  number_split = number.to_s.split(/(\d)/).select {|n| n != '' }
  puts number_split.inspect
  case number_split.length
  when 4
    thousands = number_split[0] || 0
    hundreds  = number_split[1] || 0
    tens      = number_split[2] || 0
    ones      = number_split[3] || 0
  when 3
    hundreds  = number_split[0] || 0
    tens      = number_split[1] || 0
    ones      = number_split[2] || 0
  when 2
    tens      = number_split[0] || 0
    ones      = number_split[1] || 0
  when 1
    ones      = number_split[0] || 0
  end
  puts "thounands = #{thousands}, hundreds = #{hundreds}, tens = #{tens}, ones = #{ones}"
  if(thousands != 0)
    count += "thousand".length
  end

  if(hundreds != 0)
    count += "hundred".length
  end

  if(tens != 0)
    count += TENS_ARRAY[(tens * 10)].length
  end

  if(ones != 0)
    count += ONES_ARRAY[ones].length
  end
  puts "#{TENS_ARRAY[(tens * 10)]}-#{ONES_ARRAY[ones]}"
  puts count
end

translate(45)
