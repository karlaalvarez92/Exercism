class Sieve
    def initialize(limit)
        @limit=limit
        @primes = (2..@limit).to_a
        
    end

    def primes
        current_number=2
    
        while current_number < @limit
            (2..@limit).each{ |n| @primes.delete(n * current_number)}
            current_number+=1
        end

        @primes
    end
end

