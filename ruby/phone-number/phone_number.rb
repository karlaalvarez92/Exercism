class PhoneNumber
    VALID_LENGTH_10 =10
    VALID_LENGTH_11 =11
    COUNTRY_CODE = "1"
    AREA_CODE= /[2-9]/

    def self.clean(phone_number)
        clean_phone_number = phone_number.gsub(/\D/, "")

        return if !valid_phone_number?(clean_phone_number)
        return clean_phone_number.sub("1", "") if valid_11_phone_number?(clean_phone_number)
        return if !valid_10_phone_number?(clean_phone_number)
        clean_phone_number
    end

    def self.valid_phone_number?(number)
        number.length == VALID_LENGTH_10 || number.length == VALID_LENGTH_11
    end

    def self.valid_10_phone_number?(number)
        number.length == 10 && 
        number[0].match(AREA_CODE) && 
        number[3].match(AREA_CODE)
    end

     def self.valid_11_phone_number?(number)
        number.length == 11 && 
        number[0]== COUNTRY_CODE && 
        number[1].match(AREA_CODE) &&
        number[4].match(AREA_CODE)
     end
end
