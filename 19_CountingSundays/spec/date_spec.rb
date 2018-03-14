require 'minitest/autorun'
require_relative '../date'

describe Date do

  describe 'sunday?' do
    it 'is true for 1 March 2015' do
      Date.new(1, 3, 2015).sunday?.must_equal true
    end

    it 'is true for 29 February 2004' do
      Date.new(29, 2, 2004).sunday?.must_equal true
    end

    it 'is false for 1 Jan 1900' do
      Date.new(1, 1, 1900).sunday?.must_equal false
    end

    it 'is false for 29 February 2016' do
      Date.new(29, 2, 2016).sunday?.must_equal false
    end
  end

  describe 'day_of_week' do
    it 'is Monday for 1 Jan 1900' do
      Date.new(1, 1, 1900).day_of_week.must_equal 'Monday'
    end

    it 'is Sunday for 29 February 2004' do
      Date.new(29, 2, 2004).day_of_week.must_equal 'Sunday'
    end

    it 'is Wednesday for 31 May 2017' do
      Date.new(31, 5, 2017).day_of_week.must_equal 'Wednesday'
    end

    it 'is Saturday for 1 March 2014	' do
      Date.new(1, 3, 2014).day_of_week.must_equal 'Saturday'
    end
  end

end