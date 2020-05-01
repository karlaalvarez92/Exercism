# frozen_string_literal: true

class RailFenceCipher
  def self.encode(plaintext, rails)
    rail_cipher(plaintext, rails).join
  end

  def self.decode(ciphertext, rails)
    palabra = ciphertext.chars
    algo = rail_cipher(ciphertext, rails)
    new_algo = []
    algo.each do |el|
      new_algo << Array.new(el.length)
    end
    new_algo.map! do |array|
      array.map! do |letter|
        palabra.shift if letter.nil?
      end
    end

    i = 0
    upawrd = true
    keac = []
    until keac.length == ciphertext.chars.length
      keac << new_algo[i].shift
      upawrd ? i += 1 : i -= 1
      upawrd = true if i == 0
      upawrd = false if i == rails - 1
    end
    keac.join
  end

  private

  def self.rail_cipher(text, rails)
    result = []
    i = 0
    upawrd = true

    until result.join.length == text.length
      text.each_char do |letter|
        result[i] ? result[i] << letter : result << Array.new(1, letter)

        upawrd ? i += 1 : i -= 1
        upawrd = true if i == 0
        upawrd = false if i == rails - 1
      end
    end
    result
  end
end
