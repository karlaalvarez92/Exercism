class Triangle
    attr_reader :sides

    def initialize(sides)
      @sides = sides
      return false unless triangle?
    end
  
    def equilateral?
      triangle? && sides.uniq.count == 1
    end
  
    def isosceles?
      triangle? && sides.uniq.count <= 2
    end
  
    def scalene?
      triangle? && sides.uniq.count == 3
    end

    def triangle? 
       @sides.all? { |side| side > 0} && 
       @sides.permutation(3).all? { |(a,b,c)| a <= b + c }
    end
end
  
