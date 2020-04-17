# frozen_string_literal: true

# Class CollatzConjectur
#
class CollatzConjecture
  def self.steps(number)
    raise ArgumentError unless number.positive?

    number_of_steps = 0

    while number != 1
      if (number % 2).zero?
        number /= 2
      else
        number = 3 * number + 1
      end
      number_of_steps += 1
    end
    number_of_steps
  end
end

# if (number <= 0) {
#   throw Error("Only positive numbers are allowed");
# }
