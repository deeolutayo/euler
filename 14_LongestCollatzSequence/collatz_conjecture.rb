class CollatzConjecture

  def initialize
    @cached_sequences = {1 => [1]}
  end

  def number_with_longest_chain(limit)
    1.upto(limit).max_by do |number|
      sequence(number).length
    end
  end

  def sequence(number, terms = [])
    if @cached_sequences.has_key?(number)
      @cached_sequences[terms.first] = terms.concat(@cached_sequences[number])
    else
      terms << number
      sequence(term(number), terms)
    end
  end

  def term(number)
    case
    when number == 1 then 1
    when number.odd? then (3 * number) + 1
    when number.even? then number/2
    end
  end

end