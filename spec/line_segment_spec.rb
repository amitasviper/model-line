require 'rspec'
require_relative '../src/point'
require_relative '../src/line_segment'

describe LineSegment do
  context '#length' do
    it '4 is the length of line with end points (0,0) and (0,4)' do
      line = LineSegment.new(Point.new(0, 0), Point.new(0, 4))
      expect(line.length).to eq(4)
    end

    it '6 is the length of line with end points (0,0) and (0,6)' do
      line = LineSegment.new(Point.new(0, 0), Point.new(0, 6))
      expect(line.length).to eq(6)
    end
  end
end