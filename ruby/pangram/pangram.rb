# frozen_string_literal: true

# Class Pangram
#
class Pangram
  ABC = ('a'..'z').freeze
  def self.pangram?(sentence)
    ABC.all? { |el| sentence.downcase.include?(el) }
  end
end

# ESTO TAMBIÉN PASA LAS PRUEBAS PERFECTAMENTE
# class Pangram
# ABC = ('a'..'z').to_a
# def self.pangram?(sentence)
# (ABC - sentence.downcase.chars).empty?
# end
# end
