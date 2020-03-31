class Series
    def initialize(number)
        @number = number
    end

    def slices(size)
        if @number.length < size
            raise ArgumentError.new
        else
           @number.chars.each_cons(size).map &:join     
        end      
    end
end

