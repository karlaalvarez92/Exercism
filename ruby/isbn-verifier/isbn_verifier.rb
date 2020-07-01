# frozen_string_literal: true

class IsbnVerifier
  def self.valid?(string)
    array = string.gsub(/[^X0-9]/, '').chars
    array[-1] = 10 if array.last == 'X'

    return false unless array.length == 10 || array.include?(/[^A-Z]/)

    validate(array)
  end

  def self.validate(array)
    acc = 0

    array.map(&:to_i).each_with_index do |number, index|
      acc += number * (index + 1)
    end

    (acc % 11).zero?
  end
end
