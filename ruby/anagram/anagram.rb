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
