class Array
    
    def accumulate(&block)
        result=[]
        for value in self
            result << yield(value)
        end
        result
    end
end
