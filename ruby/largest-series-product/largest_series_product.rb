# frozen_string_literal: true

# Class Series
#
class Series
  def initialize(number)
    @number = number
  end

  def largest_product(size)
    return 1 if size.zero?

    valid_number?(size)
    digits = @number.chars.map(&:to_i)

    array = []
    digits.each_cons(size) { |slice| array << slice.reduce(&:*) }
    array.max
  end

  def valid_number?(size)
    if @number.length < size ||
       (@number == '' && size.positive?) ||
       @number.match?(/\D/) || size.negative?
      raise ArgumentError
    end
  end
end
