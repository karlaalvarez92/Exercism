class ArmstrongNumbers
    def self.include?(number)
        numbers= number.digits
        numbers.map{|n| n ** numbers.length}.sum == number
    end
end

