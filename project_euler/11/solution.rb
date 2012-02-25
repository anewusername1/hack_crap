fp = File.open(File.expand_path(File.dirname(__FILE__)) + '/number_grid.txt', 'r')
numbers = []
fp.each_line do |line|
  numbers << line.split(/\s/).collect {|num| num.to_i}
end
# discard any numbers less than 90. Find those numbers and calculate their
# adjacent products. set highest only if that product is greater than the
# current highest

class HighestNumber
  def initialize(numbers)
    @numbers = numbers
  end

  def find_highest
    highest = 0
    nineties = []
    @numbers.each_with_index do |array, i_index|
      array.each_with_index do |num, j_index|
        # next if(num < 90)
        index_highest = [check_diagonal(i_index, j_index),
                         check_left_right(i_index, j_index),
                         check_up_down(i_index, j_index)].compact.max.to_i
        highest = index_highest if(index_highest > highest)
      end
    end
    highest
  end

  def check_diagonal(i, j)
    diagonals = [[], [], [], []]

    (0..3).each do |n|
      # down-right
      diagonals[0] << @numbers[i+n][j+n] unless(i >= 16 || j >= 16)
      # down-left
      diagonals[1] << @numbers[i+n][j-n] unless(i >= 16 || j <= 2)
      # up-right
      diagonals[2] << @numbers[i-n][j+n] unless(i <= 2  || j >= 16)
      # up-left
      diagonals[3] << @numbers[i-n][j-n] unless(i <= 2  || j <= 2)
    end

    diagonals.collect do |numbers|
      numbers.inject(:*)
    end.compact.max
  end

  def check_left_right(i, j)
    left_right = [[], []]

    (0..3).each do |n|
      # right
      left_right[0] << @numbers[i][j+n] unless(j >= 16)
      # left
      left_right[1] << @numbers[i][j-n] unless(j <= 3)
    end

    left_right.collect do |numbers|
      numbers.inject(:*)
    end.compact.max
  end

  def check_up_down(i,j)
    up_down = [[], []]

    (0..3).each do |n|
      # up
      up_down[0] << @numbers[i+n][j] unless(i >= 16)
      # down
      up_down[1] << @numbers[i-n][j] unless(i <= 3)
    end

    up_down.collect do |numbers|
      numbers.inject(:*)
    end.compact.max
  end
end

number_checker = HighestNumber.new(numbers)
puts number_checker.find_highest
