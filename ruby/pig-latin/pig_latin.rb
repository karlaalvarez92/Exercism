# frozen_string_literal: true

# Class PigLatin
#
class PigLatin
  VOWEL_SOUNDS = %w[a e i o u].freeze
  OTHER_VOWEL_SOUNDS = %w[xr yt].freeze
  SPECIAL_CONSONANT = ['qu'].freeze

  def self.translate(string)
    string.split(' ').map { |word| apply_rules(word) }.join(' ')
  end

  private

  def self.apply_rules(word)
    word = word
    until vowel_sound?(word)
      word = if special_consonant_sound?(word)
               cut_first_sound(split(word))
             else
               cut_first_sound(word.chars)
             end
      break if word.length == 2
    end
    word + 'ay'
  end

  def self.cut_first_sound(word)
    first_sound = word.shift
    word << first_sound
    word.join
  end

  def self.vowel_sound?(word)
    include_sound?(VOWEL_SOUNDS, word) ||
      include_sound?(OTHER_VOWEL_SOUNDS, split(word))
  end

  def self.include_sound?(array, word)
    array.any? { |sound| sound == word[0] }
  end

  def self.split(word)
    word.chars.each_slice(2).to_a.map(&:join)
  end

  def self.special_consonant_sound?(word)
    include_sound?(SPECIAL_CONSONANT, split(word))
  end
end
