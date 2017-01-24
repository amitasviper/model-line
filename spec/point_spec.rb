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
      point_one = Point.new(24, 55)
      point_two = Point.new(24, 55)
      expect(point_one.distance_from(point_two)).to eq(0)
    end

    it 'is 13 units between (14, 35) and (2, 30)' do
      point_one = Point.new(14, 35)
      point_two = Point.new(2, 30)
      expect(point_one.distance_from(point_two)).to eq(13)
    end
  end
end
