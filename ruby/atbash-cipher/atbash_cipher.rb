# frozen_string_literal: true

# Class Atbash
#
class Atbash
  CIPHER_ALPHABET = Hash[('a'..'z').zip(('a'..'z').to_a.reverse)]

  def self.encode(plaintext)
    plaintext.downcase.chars.map { |char| cipher(char) }
             .join.scan(/\w{1,5}/)
  end

  def self.decode(cyphertext)
    cyphertext.downcase.chars.map { |char| cipher(char) }.join
  end

  def self.cipher(character)
    CIPHER_ALPHABET.fetch(character) { |char| char.match?(/\d/) ? char : nil }
  end
end

# Funciona para la linea 10
# .gsub(/(.{5})/, '\1 ').strip
