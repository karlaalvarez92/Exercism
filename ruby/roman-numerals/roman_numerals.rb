class Integer
    ROMAN =  {
        1000 => "M",  
        900  => "CM",  
        500  => "D",  
        400  => "CD",
        100  => "C",  
        90   => "XC",  
        50   => "L",  
        40   => "XL",  
        10   => "X",  
        9    => "IX",  
        5    => "V",  
        4    => "IV",  
        1    => "I"  
      }
    def to_roman
        arabic_number= self
        roman_number= ""

        ROMAN.each do |number, letter|
            roman_number << letter * (arabic_number / number)
            arabic_number = arabic_number % number
        end
        roman_number
    end
end

