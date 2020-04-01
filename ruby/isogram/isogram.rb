class Isogram
    def self.isogram?(string)
        clean_string= string.downcase.gsub(/[\s-]/, "").chars
        clean_string.uniq == clean_string
    end
end

