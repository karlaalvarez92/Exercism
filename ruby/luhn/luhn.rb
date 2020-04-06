class Luhn
    def self.valid?(number)
        cleanNumber= number.delete(" ")
        if cleanNumber.length <=1 || cleanNumber.match?(/[A-Za-z:#$-]/)
            return false
        else
            luhnNumber = cleanNumber.split("").reverse.map &:to_i
            i=1

            while i <= luhnNumber.length-1 do
                if (luhnNumber[i] * 2 > 9) 
                   luhnNumber[i] = luhnNumber[i] * 2 - 9
                   i+=2
                else 
                   luhnNumber[i] = luhnNumber[i] * 2
                   i+=2
                end 
                
                
            end
            validate = luhnNumber.reduce(:+)

                return (validate % 10).zero?
    end
end
end
