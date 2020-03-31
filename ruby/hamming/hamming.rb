class Hamming
    def self.compute(strand1, strand2)
      if strand1.length != strand2.length
        raise ArgumentError.new
      else
        strand1_array = strand1.split('')
        strand2_array = strand2.split('')
  
        cont = 0
        strand1_array.each_with_index do |el, index|
          if el != strand2_array[index]
            cont += 1
          end
        end
        cont
      end
    end
  end
  

