require 'minitest/autorun'
require_relative '../coded_triangle_numbers'

describe CodedTriangleNumbers do

  describe 'count triangle words' do
    it 'should be 162 for provided sample file' do
      words_file = File.expand_path('words.txt', __dir__)
      CodedTriangleNumbers.count_triangle_words(words_file).must_equal 162
    end
  end

end