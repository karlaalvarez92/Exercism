# frozen_string_literal: true

# Class Crypto
#
class Crypto
  def initialize(text)
    @plaintext = text.to_s.gsub(/[\s@,.%\!]/, '').downcase
    puts "#{text} => #{@plaintext}"
  end

  def ciphertext
    columns = Math.sqrt(@plaintext.length).ceil
    return '' if columns.zero?

    code_text = []
    @plaintext.chars.each_slice(columns) do |slice|
      slice << ' ' while slice.length < columns
      code_text << slice
    end
    code_text.transpose.map(&:join).join(' ')
  end
end
