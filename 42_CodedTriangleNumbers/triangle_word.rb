class TriangleWord

  ORDINAL_OFFSET = 64

  def initialize(word)
    @word = word
  end

  def valid?
    perfect_square?((value * 8) + 1)
  end

  def value
    @word.gsub(/[^A-Z]/, '')
        .chars
        .map {|c| c.ord - ORDINAL_OFFSET}
        .reduce(:+)
  end

  def perfect_square?(number)
    sqrt = Math.sqrt(number)
    (sqrt % 1).zero?
  end

end