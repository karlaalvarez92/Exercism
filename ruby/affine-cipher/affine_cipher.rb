# frozen_string_literal: true

class Affine
  ALPHABETH = ('a'..'z').to_a

  def initialize(a, b)
    @a = a
    @b = b
    raise ArgumentError unless @a.gcd(26) == 1
  end

  def encode(plaintext)
    plaintext = plaintext.gsub(/[\s,.]/, '').downcase
    ciphertext = []

    plaintext.each_char do |letter|
      if letter.match?(/\d/)
        encode_letter = letter
      else
        index = ALPHABETH.index(letter)
        encode_letter = cipher_keys[index]
      end

      ciphertext << encode_letter
    end

    ciphertext.each_slice(5).map(&:join).join(' ')
  end

  def decode(ciphertext)
    ciphertext = ciphertext.delete(' ')
    decodetext = ''

    ciphertext.each_char do |letter|
      if letter.match?(/\d/)
        decode_letter = letter
      else
        index = cipher_keys.index(letter)
        decode_letter = ALPHABETH[index]
      end

      decodetext += decode_letter
    end

    decodetext
  end

  def cipher_keys
    keys = ''
    ALPHABETH.each_with_index do |_letter, index|
      new_index = (@a * index + @b) % 26
      encode_letter = ALPHABETH[new_index]
      keys += encode_letter
    end
    keys
  end
end
