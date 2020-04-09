class Crypto
  def initialize(plaintext)
      @plaintext=plaintext.gsub(/[\s@,.%\!]/, "").downcase
  end
  
  def ciphertext
      return @plaintext if @plaintext.length < 3

      #ESTAS VAN A SER LAS COLUMNAS FINALES, CEIL PARA REDONDEAR HACIA ARRIBA
      columns = Math.sqrt(@plaintext.length).ceil
      #EN ESTE NO ME FUNCIONÓ CEIL POR ESO AGREGÉ LA LINEA 13 PARA CORREGIR CIERTOS CASOS
      raws = (@plaintext.length/columns)
      raws+=1 if @plaintext.length > raws*columns
      #ESTO ES PARA AGREGAR LOS ESPACIOS EN BLANCO EN CASO QUE EL LAS LETRAS NO LLENEN LA CANTIDAD NECESARIA
      @plaintext+= " "*(columns*raws-@plaintext.length)
      
      array = []
      i=0

      while array.length < raws
      array << @plaintext.chars.slice(i, columns)
      i+= columns
      end

      array.transpose.map{|el| el.join}.join(" ")      
  end
end
