# frozen_string_literal: true

# Class Array
#
class Array
  def keep
    result = []
    each do |value|
      result << value if yield(value)
    end
    result
  end

  def discard
    result = []
    each do |value|
      result << value unless yield(value)
    end
    result
  end
end
