class Gigasecond
    GIGASECOND = 10 **9;
        
    def self.from(date)
       Time.at(date.to_i + GIGASECOND)
    end
end
