class Raindrops
    def self.convert(number)
        soundOfRain=""
        soundOfRain << "Pling" if (number % 3).zero?
        soundOfRain << "Plang" if (number % 5).zero?
        soundOfRain << "Plong" if (number % 7).zero?
        soundOfRain << number.to_s  if soundOfRain.empty? 

        soundOfRain
    end
end

