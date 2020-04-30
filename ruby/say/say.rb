# frozen_string_literal: true

class Say
  NUMBERS = {
    1 => ['one', 'ten', ' one hundred'],
    2 => ['two', ' twenty-', ' two hundred'],
    3 => ['three', ' thirty-', ' three hundred'],
    4 => ['four', ' forty-', ' four hundred', 'fourteen'],
    5 => ['five', ' fifty-', ' five hundred'],
    6 => ['six', ' sixty-', ' six hundred'],
    7 => ['seven', ' seventy-', 'seventy hundred'],
    8 => ['eight', ' eighty-', 'eight hundred'],
    9 => ['nine', ' ninety-', 'nine hundred']
  }.freeze

  UNITS = 0
  TEENS = 3

  BIG_NUMBERS = ['', ' thousand ', ' million ', ' billion '].freeze

  def initialize(number)
    @number = number
    raise ArgumentError if @number.negative? || @number > 999_999_999_999
  end

  def in_english
    return 'zero' if @number.zero?
    return NUMBERS[@number.digits[UNITS]][TEENS] if @number.between?(11, 19)

    letters = []
    @number.digits.each_slice(3).with_index do |slice, index|
      next if slice.all?(&:zero?)

      number = [BIG_NUMBERS[index]]
      slice.each.with_index do |num, i|
        next if num.zero?

        number << NUMBERS[num][i]
      end
      letters << number
    end
    letters.map(&:reverse).reverse.compact.join.gsub(/  |-$/, ' ').strip
  end
end
