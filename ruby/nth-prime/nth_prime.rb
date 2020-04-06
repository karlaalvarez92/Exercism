class Prime
    def self.nth(size)
        raise ArgumentError.new if size.zero?
        #hasta que mi array sea == size, necesito obtener todos los numero 
        #primos existenten y agregarlos al array, retornar el último primo
        @@prime_numbers=[]
        current_number=2

        until @@prime_numbers.length == size
            @@prime_numbers << current_number if prime?(current_number)
            current_number+=1 
        end
        @@prime_numbers.last
    end
    

    
    def self.prime?(number)
        return true if @@prime_numbers.empty?
        @@prime_numbers.each{|n|return false if number % n == 0}
    end
end
