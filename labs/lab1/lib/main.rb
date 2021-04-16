load 'input_data.rb'
load 'conversion.rb'

class Main
  def self.main
    number_temp = InputData.enter_temp

    scale_one = InputData.enter_scale('enter the scale C or K or F:')
    scale_two = InputData.enter_scale('enter the scale, you want to translate to C or K or F: ')

    result = Conversion.run_conversion(number_temp, scale_one, scale_two)

    puts "result = '#{result}'"
  end
end

Main.main
