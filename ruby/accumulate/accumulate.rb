# frozen_string_literal: true

# Class Array
#
class Array
  def accumulate
    result = []
    each do |value|
      result << yield(value)
    end

    result
  end
end
