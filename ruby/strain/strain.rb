class Array 
    def keep(&block)
        result=[]
        for value in self
            result << value if yield(value)
            
        end
        result
    end
    
    def discard(&block)
        result=[]
        for value in self
            result << value if !yield(value)
        end
        result
    end
end

