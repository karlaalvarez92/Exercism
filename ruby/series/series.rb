class Series
    def initialize(number)
        @number = number
    end

    def slices(n)
        if @number.length < n
            raise ArgumentError.new
        else
            slicesArray = []
            max = @number.length-n

            for i in(0..max)
                slicesArray.push(@number.slice(i..i+n-1))
            end

            slicesArray
        end      
    end
end

