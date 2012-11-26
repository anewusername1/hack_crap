fp = File.open(File.expand_path(File.dirname(__FILE__)) + '/triangle', 'r')

triangle = []
fp.each_line do |line|
  triangle << line.split
end
triangle = triangle.reverse

sum = 0
last_index = triangle.length - 1

new_triangle = []
triangle.each_with_index do |tri, outer_idx|
  next if(outer_idx.to_i == 0)
  next if(outer_idx.to_i == last_index)

  tri.each_with_index do |number, inner_idx|
    first = number.to_i + triangle[outer_idx-1][inner_idx].to_i
    second = number.to_i + triangle[outer_idx-1][inner_idx+1].to_i
    triangle[outer_idx.to_i][inner_idx.to_i] = [first, second].max
  end
end

number1 = triangle[last_index][0].to_i + triangle[last_index-1][0].to_i
number2 = triangle[last_index][0].to_i + triangle[last_index-1][1].to_i
puts "biggest number is #{[number1, number2].max}"
