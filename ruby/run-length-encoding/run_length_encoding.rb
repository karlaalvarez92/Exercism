# frozen_string_literal: true

# Class RunLengthEncoding
#
class RunLengthEncoding
  def self.encode(input)
    input.chars
         .chunk { |el| el }
         .collect do |letter, collection|
      [collection.length > 1 ? collection.length : '', letter].join
    end .join
  end

  def self.decode(input)
    input.scan(/(\d*)([ \w]+?)/)
         .map { |pair| pair[1] * (pair[0] != '' ? pair[0].to_i : 1) }
         .join
  end
end
