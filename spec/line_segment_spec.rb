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

    it 'not equal if both the lines are not type of LineSegment' do
      line_one = LineSegment.new(Point.new(22, 44), Point.new(55, 66))
      line_two = double(start_point:22, end_point:55)
      expect(line_one).not_to eq(line_two)
    end

    it 'should be equal to itself' do
      line = LineSegment.new(Point.new(22, 44), Point.new(55, 66))
      expect(line).to eq(line)
    end

    it 'should be equal to a line with swapped end points' do
      line_one = LineSegment.new(Point.new(22, 44), Point.new(55, 66))
      line_two = LineSegment.new(Point.new(55, 66), Point.new(22, 44))
      expect(line_one).to eq(line_two)
    end
  end
end