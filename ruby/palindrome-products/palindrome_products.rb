# frozen_string_literal: true

class Palindromes
  # Palindrome = Structure.new(:value)
  attr_reader :largest, :smallest

  def initialize(input)
    @max_factor = input[:max_factor]
    @min_factor = input[:min_factor] || 1
    @range = (@min_factor..@max_factor)
    @palindromes = palindromes
  end

  def generate
    @largest = Palindrome.new(@palindromes.max, factors(@palindromes.max))
    @smallest = Palindrome.new(@palindromes.min, factors(@palindromes.min))
  end

  def palindromes
    array = []
    @range.map do |num|
      @range.map do |other|
        factor = other * num
        array << factor if factor.digits.reverse == factor.digits
      end
    end
    array
  end

  def factors(number)
    numbers = @range.select do |num|
      (number % num).zero? && @range.include?(number / num)
    end
    numbers.map { |num| [num, number / num].sort }.uniq
  end
end

class Palindrome
  attr_reader :value, :factors
  def initialize(value, factors)
    @value = value
    @factors = factors
  end
end
