# frozen_string_literal: true

# Class CollatzConjectur
#
class CollatzConjecture
  def self.steps(number)
    raise ArgumentError unless number.positive?

    steps = 0

    while number != 1
      number.odd? ? number = 3 * number + 1 : number /= 2
      steps += 1
    end
    steps
  end
end
