class Complement
    NUCLEOTIDES = {
  G: "C",
  C: "G",
  T: "A",
  A: "U"
}
    def self.of_dna(dna)
         dna.chars.map{|el|  NUCLEOTIDES[el.to_sym]}.join("") 
    end
end


