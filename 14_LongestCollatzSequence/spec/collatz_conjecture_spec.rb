require 'minitest/autorun'
require_relative '../collatz_conjecture'

describe CollatzConjecture do
  let(:collatz) {CollatzConjecture.new}

  describe 'number_with_longest_chain' do
    it 'is 837,799 for numbers below 1 million' do
      collatz.number_with_longest_chain(999999).must_equal 837799
    end
  end

  describe 'sequence' do
    it 'stops at 1' do
      collatz.sequence(1).last.must_equal 1
      collatz.sequence(99).last.must_equal 1
    end

    it 'starts at the given number' do
      collatz.sequence(1).first.must_equal 1
      collatz.sequence(99).first.must_equal 99
    end

    it 'is expected sequence for numbers above 1' do
      collatz.sequence(13).must_equal [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
      collatz.sequence(3).must_equal [3, 10, 5, 16, 8, 4, 2, 1]
    end
  end

  describe 'term' do
    it 'is 1 for 1' do
      collatz.term(1).must_equal 1
    end

    it 'is 3n + 1 for odd numbers' do
      collatz.term(3).must_equal 10
      collatz.term(13).must_equal 40
    end

    it 'is n/2 for even numbers' do
      collatz.term(2).must_equal 1
      collatz.term(40).must_equal 20
    end
  end

end