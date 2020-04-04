class Prime
    def self.nth(size)
        raise ArgumentError.new if size.zero?
        #hasta que mi array sea == size, necesito obtener todos los numero 
        #primos existenten y agregarlos al array, retornar el último primo
        prime_numbers=[]
        current_number=1

        until prime_numbers.length == size
            i=0
            (1..104743).each{|n| i+=1 if current_number % n == 0}
            prime_numbers << current_number if i == 2
            current_number+=1 
        end
        prime_numbers[-1]
    end
end

