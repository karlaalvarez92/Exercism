# frozen_string_literal: true

class RotationalCipher
  LETTERS = ('a'..'z').to_a
  CAPITAL_LETTERS = ('A'..'Z').to_a

  def self.rotate(plaintext, n)
    ciphertext = ''

    plaintext.each_char do |letter|
      if letter.match?(/[A-Z]/)
        original_index = CAPITAL_LETTERS.index(letter)
        new_order = CAPITAL_LETTERS.rotate(n)
        ciphertext += new_order[original_index]

      elsif letter.match?(/[a-z]/)
        original_index = LETTERS.index(letter)
        new_order = LETTERS.rotate(n)
        new_order[original_index]
        ciphertext += new_order[original_index]

      else
        ciphertext += letter
      end
    end

    ciphertext
  end
end
