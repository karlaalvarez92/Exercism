# frozen_string_literal: true

# Class ETL
#
class ETL
  def self.transform(old)
    expected = {}
    old.map do |key, value|
      value.map(&:downcase).each { |letter| expected[letter] = key }
    end
    expected
  end
end
