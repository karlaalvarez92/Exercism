# frozen_string_literal: true

# Class PrimeFactors
#
class PrimeFactors
  def self.of(limit)
    prime_factors = []
    i = 2
    while i <= limit
      if (limit % i).zero?
        limit /= i
        prime_factors << i
      else
        i += 1
      end
    end
    prime_factors
  end
end
