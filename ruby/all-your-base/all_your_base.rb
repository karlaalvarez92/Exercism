# frozen_string_literal: true

class BaseConverter
  def self.convert(input_base, digits, output_base)
    valid?(digits, input_base, output_base)
    return to_decimal(input_base, digits) if output_base == 10
    return [0] if digits.all?(&:zero?)

    converter(input_base, digits, output_base)
  end

  def self.converter(input_base, digits, output_base)
    decimal_base = to_decimal(input_base, digits).join.to_i
    result = []
    dividend = decimal_base

    while dividend.positive?
      result << dividend % output_base
      dividend /= output_base
    end
    result.reverse
  end

  def self.to_decimal(input_base, digits)
    decimal = 0
    digits.reverse.each_with_index do |digit, index|
      decimal += digit * input_base**index
    end
    decimal.digits.reverse
  end

  def self.valid?(digits, input_base, output_base)
    raise ArgumentError if input_base == 2 && !digits.all? { |digit| digit < 2 && digit >= 0 } ||
                           !digits.all? { |digit| digit >= 0 } ||
                           input_base < 2 ||
                           output_base < 2
  end
end
