class FlattenArray
    def self.flatten(compound_array, flatten_array=[])
        compound_array.each { |el| 
        el.is_a?(Array) ? flatten(el, flatten_array) : flatten_array << el } 
        
        flatten_array.compact
    end
end

