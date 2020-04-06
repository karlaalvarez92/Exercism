class Sieve
    def initialize(number)
        @number=number 
        @prime_numbers=[]      
    end

    def primes
        current_number=2

        while current_number <= @number     
            @prime_numbers << current_number if prime?(current_number)
            current_number+=1   
        end

        @prime_numbers 
    end

    def prime?(number)
        return true if @prime_numbers.empty?
        @prime_numbers.each{|n|return false if number % n == 0}
    end
end

