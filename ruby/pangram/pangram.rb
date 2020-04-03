class Pangram
    ABC = ('a'..'z')
    def self.pangram?(sentence)
        ABC.all?{|el| sentence.downcase.include?(el)}
    end
end

