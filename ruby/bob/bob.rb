class Bob
    def self.hey(remark)
        remark = remark.gsub(/\s+/, "")
        return "Fine. Be that way!" if remark == ""
        return "Calm down, I know what I'm doing!" if remark.match(/[A-Z]/) && remark.upcase == remark && remark.chars.last== "?"
        return "Whoa, chill out!" if remark.match(/[A-Z]/) && remark.upcase == remark 
        return "Sure." if remark.chars.last== "?"
        return "Whatever."
    end
end


