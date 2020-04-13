# frozen_string_literal: true

# Class PhoneNumber
#
class PhoneNumber
  def self.clean(phone_number)
    clean_phone_number = phone_number.gsub(/^\+?1|\D/, '')

    @country_code = clean_phone_number[0].to_i
    @area_code = clean_phone_number[3].to_i

    return if !valid_size?(clean_phone_number) || !valid_codes?

    clean_phone_number
  end

  def self.valid_size?(clean_phone_number)
    clean_phone_number.size == 10
  end

  def self.valid_codes?
    @country_code > 1 && @area_code > 1
  end
end
