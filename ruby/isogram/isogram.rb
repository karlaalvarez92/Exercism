class Isogram
    def self.isogram?(string)
        cleanString= string.downcase.gsub(/[\s-]/, "").chars
        cleanString.uniq == cleanString
    end
end

