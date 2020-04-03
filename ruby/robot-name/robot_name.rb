class Robot
    @letters = ('AA'..'ZZ').to_a
    @numbers = (0..999).to_a.map {|num| num.to_s.rjust(3, "0")}

    attr_reader :name

    def initialize
        @name = @@all_names.pop 
    end

    def self.forget
        @@all_names = @letters.map {|two_letters| @numbers.map {|three_numbers| two_letters + three_numbers} }.flatten.shuffle
    end

    def reset
        @name = @@all_names.pop 
    end

end


