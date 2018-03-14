require 'minitest/autorun'
require_relative '../counting_sundays'

describe CountingSundays do

  describe 'number_of_first_sundays' do
    it 'is 20 between 2010 and 2020' do
      CountingSundays.number_of_first_sundays(2010, 2020).must_equal 20
    end

    it 'is 171 between 1901 and 2000' do
      CountingSundays.number_of_first_sundays(1901, 2000).must_equal 171
    end
  end

end