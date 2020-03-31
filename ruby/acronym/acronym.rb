class Acronym
    def self.abbreviate(string)
     array = string.upcase.gsub(/[^A-Z0-9']+/, " ").split(" ")
     
     acronym = ""
     array.each_with_index do |el, index| 
        acronym += array[index][0]
     end
     acronym
    end
end


