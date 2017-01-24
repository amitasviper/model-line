require_relative '../src/point'

# Represent a line with two end points
class LineSegment
  def initialize(start_point, end_point)
    @start_point = start_point
    @end_point = end_point
  end

  def length
    @start_point.distance_from(@end_point)
  end

  def ==(that)
    return false if that.nil?
    return false if self.class != that.class
    that.send(:start_point) == @start_point && that.send(:end_point) == @end_point
  end

  private
  attr_reader :start_point, :end_point
end