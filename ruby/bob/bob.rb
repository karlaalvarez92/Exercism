class Bob
    def self.hey(remark)
        remark = remark.gsub(/\s+/, "")
        return "Fine. Be that way!" if remark == ""
        return "Calm down, I know what I'm doing!" if all_upcase?(remark) && question_mark?(remark)
        return "Whoa, chill out!" if all_upcase?(remark)
        return "Sure." if question_mark?(remark)
        return "Whatever."
    end

    def self.all_upcase?(remark)
        remark.match(/[A-Z]/) && remark.upcase == remark 
    end

    def self.question_mark?(remark)
        remark.chars.last== "?"
    end
end

#Separar por funciones 
#Hacerlo orientado a objetos


