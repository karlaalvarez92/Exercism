class Array
    
    def accumulate(&block)
        result=[]
        for value in self
            result << block.call(value)
        end
        result
    end
end
