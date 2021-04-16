class Conversion
  def self.run_conversion(number_temp, scale_one, scale_two)
    return number_temp if scale_one == scale_two

    case scale_one
    when 'C'
      result = conversion_c(number_temp, scale_two)
    when 'K'
      result = conversion_k(number_temp, scale_two)
    when 'F'
      result = conversion_f(number_temp, scale_two)
    end

    result
  end

  def self.conversion_c(number_temp, scale_two)
    case scale_two
    when 'K'
      number_temp = number_temp.to_f + 273.15
    when 'F'
      number_temp = number_temp.to_f * 1.8 + 32
    end

    number_temp
  end

  def self.conversion_k(number_temp, scale_two)
    case scale_two
    when 'C'
      number_temp = number_temp.to_f - 273.15
    when 'F'
      number_temp = number_temp.to_f * 1.8 - 459.67
    end

    number_temp
  end

  def self.conversion_f(number_temp, scale_two)
    case scale_two
    when 'C'
      number_temp = (number_temp.to_f - 32) / 1.8
    when 'K'
      number_temp = (number_temp.to_f + 459.67) / 1.8
    end
    number_temp
  end
end
