# frozen_string_literal: true

# Class Anagram
#
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select do |word|
      word.downcase.chars.sort == @word.chars.sort && word.downcase != @word
    end
  end
end

# Esto funciona perfectamente en la linea 12
# words.find_all { |w| w.downcase.chars.sort == word.downcase.chars.sort }
# .reject { |w| w.downcase == word.downcase }
