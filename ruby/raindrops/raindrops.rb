class Raindrops
    def self.convert(number)
        threeIsFactor = "Pling"
        fiveIsFactor = "Plang"
        sevenIsFactor = "Plong"

        def self.isDivisibleBy(number, factor)
          number % factor == 0
        end
        
        soundOfRain = ""

        if !isDivisibleBy(number, 3) &&
           !isDivisibleBy(number, 5) &&
           !isDivisibleBy(number, 7)
          
           soundOfRain += number.to_s;
        end
       
        if isDivisibleBy(number, 3)
           soundOfRain += threeIsFactor;
        end
          
        if isDivisibleBy(number, 5) 
           soundOfRain += fiveIsFactor;
        end
          
        if isDivisibleBy(number, 7) 
           soundOfRain += sevenIsFactor;
        end
         
        soundOfRain; 
    end
end

