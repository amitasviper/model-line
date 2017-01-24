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

  context '#equals' do
    it 'should be equal if both have same end points' do
      line_one = LineSegment.new(Point.new(22, 44), Point.new(55, 66))
      line_two = LineSegment.new(Point.new(22, 44), Point.new(55, 66))
      expect(line_one).to eq(line_two)
    end

    it 'should not be equal to nil' do
      line = LineSegment.new(Point.new(22, 44), Point.new(55, 66))
      expect(line).not_to eq(nil)
    end
  end
end