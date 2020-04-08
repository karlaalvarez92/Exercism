class Atbash
    ALPHABET = ("a".."z").to_a
    CIPHER = ALPHABET.reverse

    def self.encode(plaintext)
        array_text= plaintext.downcase.gsub(/[\s,]/, "").chars
        ciphertext = []
        array_text.each{|letter| 
        letter.match?(/[a-z]/) ? ciphertext << CIPHER[ALPHABET.index(letter)] :
        ciphertext << letter  
    }
    ciphertext.count >= 5 ? ciphertext.join.scan(/\w{1,5}/).join(" ") : 
    ciphertext.join
    end

    def self.decode(ciphertext)
        array_cipher= ciphertext.delete(" ").chars
        plaintext = []
        array_cipher.each{|letter| 
        letter.match?(/[a-z]/) ? plaintext << ALPHABET[CIPHER.index(letter)] :
        plaintext << letter  
    }
    plaintext.join
    end
end

