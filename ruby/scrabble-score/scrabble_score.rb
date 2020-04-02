class Scrabble
    VALUES = {
            "A" => 1,
            "B" => 3,
            "C"=> 3,
            "D"=> 2,
            "E"=> 1,
            "F"=> 4,
            "G"=> 2,
            "H"=> 4,
            "I"=>1,
            "J"=> 8,
            "K"=> 5,
            "L"=> 1,
            "M"=> 3,
            "N"=>1,
            "O"=> 1,
            "P"=>3,
            "Q"=>10,
            "R"=>1,
            "S"=> 1,
            "T"=> 1,
            "U"=>1,
            "V"=> 4,
            "W" => 4,
            "X" => 8,
            "Y" => 4,
            "Z" => 10
}.freeze

    def initialize(letters)
        @letters = letters
       
    end

    def self.score letters
        new(letters).score
    end

    def score  
         @letters
         .to_s
         .upcase
         .chars
         .reduce(0) do |acc, letter| acc + VALUES[letter]
         .to_i 
        end      
    end   
end




