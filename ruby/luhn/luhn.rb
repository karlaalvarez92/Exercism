class Luhn
    def self.valid?(number)
        cleanNumber= number.gsub(/\s/, "")
        if cleanNumber.length <=1 || cleanNumber.match(/[A-Za-z:#$-]/)
            return false
        else
            luhnNumber = cleanNumber.split("").reverse.map &:to_i
            i=1

            while i <= luhnNumber.length do
                if (luhnNumber[i] * 2 > 9) 
                   luhnNumber[i] = luhnNumber[i] * 2 - 9
                   i+=2
                else 
                   luhnNumber[i] = luhnNumber[i] * 2
                   i+=2
                end 
                
                validate = luhnNumber.reduce(:+)

                puts (validate % 10).zero?, luhnNumber, cleanNumber
                return (validate % 10).zero?
            end
            
    end
end
end
