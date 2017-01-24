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

  def distance_from(end_point)
    Math.sqrt((end_point.send(:x) - @x)**2 + (end_point.send(:y) - @y)**2 )
  end

  private
  attr_reader :x, :y
end
