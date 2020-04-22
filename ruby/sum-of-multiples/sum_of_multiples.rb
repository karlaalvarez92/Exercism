# frozen_string_literal: true

# Class SumOfMultiples
#
class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(number)
    return 0 if number == 1 || @multiples.empty?

    (1...number).select { |num| multiple?(num) }
                .reduce(:+)
  end

  def multiple?(number)
    @multiples.any? { |multiple| (number % multiple).zero? }
  end
end
