class Sieve
    def initialize(number)
        @number=number       
    end

    def primes
        prime_numbers=[]
        current_number=1
        
        while current_number<= @number
            i=0
            (1..@number).each{|n| i+=1 if current_number % n == 0}
            prime_numbers << current_number if i == 2
            current_number+=1   
        end

        prime_numbers
        
    end
end

