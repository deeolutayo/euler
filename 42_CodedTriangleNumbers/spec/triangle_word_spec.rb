require 'minitest/autorun'
require_relative '../triangle_word'

describe TriangleWord do

  describe 'valid?' do
    it 'is true for triangle words' do
      TriangleWord.new('SKY').must_be :valid?
      TriangleWord.new('TITLE').must_be :valid?
    end

    it 'is false for non-triangle words' do
      TriangleWord.new('CHAPTER').wont_be :valid?
    end
  end

  describe 'value' do
    it 'calculates word values based on alphabetic position of its characters' do
      TriangleWord.new('SKY').value.must_equal 55
    end

    it 'ignores characters that are not in the range A-Z' do
      TriangleWord.new('\"SKY\",').value.must_equal 55
    end
  end

end