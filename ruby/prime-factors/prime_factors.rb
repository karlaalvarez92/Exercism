require "prime"

class PrimeFactors
   def self.of(limit)
      prime_factors = []
      i = 2
    
      while i <= limit 
         quotient = limit / i
    
         if limit % i == 0 
            limit = quotient
            prime_factors << i
         else 
            i+=1
        end
      end
      
      prime_factors
   end
end

