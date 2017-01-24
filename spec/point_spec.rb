require 'rspec'
require_relative '../src/point'

describe 'Point' do
  context '#equals' do
    it 'is equal when both points have same coordinates' do
      point_one = Point.new(2, 2)
      point_two = Point.new(2, 2)
      expect(point_one).to eq(point_two)
    end

    it 'is not equals to nil' do
      point_one = Point.new(2, 2)
      expect(point_one).not_to eq(nil)
    end

    it 'is not equal when both the points have different coordinates' do
      point_one = Point.new(2,2)
      point_two = Point.new(3,3)
      expect(point_one).not_to eq(point_two)
    end

    it 'is equal if the object references are same' do
      point_one = Point.new(2,2)
      expect(point_one).to eq(point_one)
    end

    it 'is not equal when both the points are not of type Point' do
      point_one = Point.new(2,2)
      point_two = double(x: 2, y: 2)
      expect(point_one).not_to eq(point_two)
    end
  end

  context '#distance' do

    it 'is 0 units from itself' do
      point = Point.new(2, 2)
      expect(point.distance_from(point)).to eq(0)
    end

    it 'is 0 units from another point with same coordinates' do
      point_one = Point.new(0, 0)
      point_two = Point.new(0, 0)
      expect(point_one.distance_from(point_two)).to eq(0)
    end

    it 'is 4 units between (0,0) and (0,4)' do
      point_one = Point.new(0, 0)
      point_two = Point.new(0, 4)
      expect(point_one.distance_from(point_two)).to eq(4)
    end
  end
end
