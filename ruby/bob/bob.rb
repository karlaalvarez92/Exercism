class Bob
  def self.hey(remark)
    remark = remark.gsub(/\s+/, "")

    return "Fine. Be that way!" if empty?(remark)
    return "Calm down, I know what I'm doing!" if shout?(remark) && question?(remark)
    return "Whoa, chill out!" if shout?(remark)
    return "Sure." if question?(remark)
    return "Whatever."
  end

  def self.empty?(remark)
    remark.empty?
  end

  def self.shout?(remark)
    remark.match(/[A-Z]/) && remark.upcase == remark 
  end

  def self.question?(remark)
    remark.chars.last== "?"
  end
end




