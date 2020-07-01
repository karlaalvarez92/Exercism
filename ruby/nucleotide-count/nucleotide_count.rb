# frozen_string_literal: true

class Nucleotide
  def self.from_dna(dna)
    @dna = dna
    raise ArgumentError if @dna.match?(/[^ATCG]/)

    self
  end

  def self.count(nucleotide)
    @dna.count(nucleotide)
  end

  def self.histogram
    hash = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @dna.chars.tally.map { |key, value| hash[key] = value }
    hash
  end
end

## Reduce de hash map
