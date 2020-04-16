# frozen_string_literal: true

# Class Cipher
#
class Cipher
  attr_reader :key

  KEYS = ('a'..'z').to_a

  def initialize(key = default_key)
    validate_key(key)
    @key = key
  end

  def default_key
    ('a'..'z').to_a.sample(100).join
  end

  def validate_key(key)
    raise ArgumentError unless key.match(/^[a-z]+$/)
  end

  def encode(plaintext)
    plaintext = plaintext.chars
    keys = @key.chars.slice(0, plaintext.length)

    encode = ''
    plaintext.each_with_index do |letter, index|
      new_index = position_of(keys[index]) + position_of(letter)
      new_index > 25 ? encode_letter = KEYS[new_index - 26] : encode_letter = KEYS[new_index]
      encode += encode_letter
    end
    encode
  end

  def decode(ciphertext)
    ciphertext = ciphertext.chars
    keys = @key.chars.slice(0, ciphertext.length)

    decode = ''
    ciphertext.each_with_index do |letter, index|
      new_index = position_of(letter) - position_of(keys[index])
      new_index.negative? ? decode_letter = KEYS[26 + new_index] : decode_letter = KEYS[new_index]

      decode += decode_letter
    end
    decode
  end

  def position_of(letter)
    KEYS.index(letter)
  end
end
