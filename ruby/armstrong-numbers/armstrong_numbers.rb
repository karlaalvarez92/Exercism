class ArmstrongNumbers
    def self.include?(number)
        numbersArray = number.to_s.chars.map{|el| el.to_i}
        calculated = numbersArray.map{|el| el ** numbersArray.length}.sum
        calculated == number
    end
end

