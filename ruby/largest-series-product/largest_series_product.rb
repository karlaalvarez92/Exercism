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
    array = []
    @number.chars
           .map(&:to_i)
           .each_cons(size) { |slice| array << slice.reduce(&:*) }
    array.max
  end

  def valid_number?(size)
    if @number.match?(/\D/) ||
       @number.length < size
      raise ArgumentError
    end
  end
end
