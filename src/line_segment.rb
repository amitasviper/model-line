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


end