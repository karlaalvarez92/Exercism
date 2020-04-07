class PhoneNumber
    def self.clean(phone_number)
    
    clean_phone_number = phone_number.gsub(/\D/, "")
    
    #valid_phone_number? 
    return nil if clean_phone_number.length < 10 || clean_phone_number.length > 11

    #valid_10_phone_number
    return nil if clean_phone_number.length == 10 && 
                  (clean_phone_number[0].match(/[^2-9]/) || 
                  clean_phone_number[3].match(/[^2-9]/))

    #valid_11_phone_number
    return nil if clean_phone_number.length == 11 && 
                  (clean_phone_number[0].match(/[^1]/) || 
                  clean_phone_number[1].match(/[^2-9]/) ||
                  clean_phone_number[4].match(/[^2-9]/))
    return clean_phone_number.sub("1", "")   

    clean_phone_number
    end
end

