# frozen_string_literal: true

InvalidCodonError = Class.new(StandardError)

class Translation
  PROTEINS = {
    Methionine: %w[AUG],
    Phenylalanine: %w[UUU UUC],
    Leucine: %w[UUA UUG],
    Serine: %w[UCU UCC UCA UCG],
    Tyrosine: %w[UAU UAC],
    Cysteine: %w[UGU UGC],
    Tryptophan: %w[UGG],
    STOP: %w[UAA UAG UGA]
  }.freeze

  def self.of_codon(codon)
    proteins = ''
    PROTEINS.each { |key, value| proteins = key.to_s if value.include?(codon) }
    proteins
  end

  def self.of_rna(strand)
    proteins = []
    strand.chars.each_slice(3) do |slice|
      PROTEINS.each do |key, value|
        return proteins if %w[UAA UAG UGA].include?(slice.join)

        proteins << key.to_s if value.include?(slice.join)
      end
    end
    raise InvalidCodonError if proteins.empty?

    proteins
  end
end
