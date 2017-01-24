# Represents two coordinates on 2d plane
class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  def ==(that)
    return false if that.nil?
    return true if self.equal?(that)
    return false if self.class != that.class
    that.send(:x) == @x && that.send(:y) == @y
  end

  def square_of_differences(number_one, number_two)
    difference = number_one - number_two
    difference * difference
  end

  def distance_from(end_point)
    square_difference_x = square_of_differences(end_point.send(:x), @x)
    square_difference_y = square_of_differences(end_point.send(:y), @y)
    sum_of_squares = square_difference_x + square_difference_y
    Math.sqrt(sum_of_squares)
  end

  private
  attr_reader :x, :y
end
