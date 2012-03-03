require File.expand_path(File.dirname(__FILE__) + '/../util.rb')
# K is the area of the triange
# area formula = 1/2 b * h
# angle A = arccos((b**2 + c**2 - a**2) / 2bc)
#
# R for triangles:
#   isosceles
#     - Two sides and two angles are equal
#     R = b * (Math.sqrt(((2a - b) / (2a + b)) / 2))
#   equalateral
#     - all sides/angles equal
#     R = a * (Math.sqrt(3) / 3)
#   right
#     - One angle == 90 degrees
#     R = c / 2
#   scalene
#     - no sides and no angles are equal
#     R = a / 2sin(A)
#

base  = 1
hight = 1

max_radius = !!ARGV[0] ? ARGV[0].to_i : 10**7

puts max_radius
radii = []
radius = 0
while(base < max_radius)
  while(hight < max_radius)
    hypotenuse = Math.sqrt(base**2 + hight**2)
    hight += 1

    next unless(is_integer?(hypotenuse))
    area = (base * hight) / 2
    radius = (base * hight * hypotenuse) / 4*area
    next unless(is_integer?(radius))
    radii << radius unless(radius > max_radius)
    puts "hypotenuse: #{hypotenuse}, base: #{base}, hight: #{hight}"
    puts radius
  end
  radius = 0
  base += 1
  hight = 1
end
puts radii.inspect
puts radii.inject(:+)
