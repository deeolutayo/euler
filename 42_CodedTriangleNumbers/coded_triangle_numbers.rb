require_relative 'triangle_word'

class CodedTriangleNumbers

  WORD_SEPARATOR = ','

  def self.count_triangle_words(filename)
    File.readlines(filename, WORD_SEPARATOR)
        .map {|word| TriangleWord.new(word)}
        .count(&:valid?)
  end

end