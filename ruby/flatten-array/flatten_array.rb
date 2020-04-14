# frozen_string_literal: true

# Class FlattenArray
#
class FlattenArray
  def self.flatten(compound_array, flatten_array = [])
    compound_array.each do |el|
      el.is_a?(Array) ? flatten(el, flatten_array) : flatten_array << el
    end

    flatten_array.compact
  end
end
