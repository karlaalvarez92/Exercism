# frozen_string_literal: true

# Class ComplexNumber
#
class ComplexNumber
  attr_reader :real, :imaginary
  def initialize(real, imaginary)
    @real = 0.0 + real
    @imaginary = 0.0 + imaginary
  end

  def ==(other)
    real == other.real && imaginary == other.imaginary
  end

  def +(other)
    @real += other.real
    @imaginary += other.imaginary
    self
  end

  def -(other)
    @real -= other.real
    @imaginary -= other.imaginary
    self
  end

  def *(other)
    new_real = @real * other.real - @imaginary * other.imaginary

    @imaginary = @imaginary * other.real + @real * other.imaginary
    @real = new_real
    self
  end

  def /(other)
    new_real =
      (@real * other.real + @imaginary * other.imaginary) /
      (other.real**2 + other.imaginary**2)

    @imaginary =
      (@imaginary * other.real - @real * other.imaginary) /
      (other.real**2 + other.imaginary**2)
    @real = new_real
    self
  end

  def abs
    Math.sqrt(@real**2 + @imaginary**2)
  end

  def conjugate
    @imaginary *= -1 unless @imaginary.zero?
    self
  end

  def exp
    new_real = Math.exp(@real) * Math.cos(@imaginary)
    @imaginary = Math.exp(@real) * Math.sin(@imaginary).floor
    @real = new_real
    self
  end
end
