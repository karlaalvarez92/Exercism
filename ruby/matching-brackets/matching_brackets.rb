# frozen_string_literal: true

# Class Brackets
#
class Brackets
  def self.paired?(string)
    string = string.gsub(/[^\[\]\(\)\{\}]/, '')
    return false if string.length.odd?

    while string.match?(/\[\]|\(\)|\{\}/)
      string = string.gsub(/\[\]|\(\)|\{\}/, '')
    end

    string == ''
  end
end

#Hacerlo con pila revisar ejercicio de Juan
#Investigar autómata de pila

