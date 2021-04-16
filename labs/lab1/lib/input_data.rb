class InputData
  def self.enter_temp
    print('Enter the number: ')
    number_temp = $stdin.gets.strip
    until number_temp =~ /(^\d+\.?\d+$|^\d+$)/
      puts('wrong data')
      print('enter the number: ')
      number_temp = gets.strip
    end
    number_temp.to_f
    number_temp
  end

  def self.enter_scale(message)
    print(message)
    scale_one = $stdin.gets.strip
    until scale_one =~ /^[CKF]$/
      puts('wrong data')
      print('enter the scale: ')
      scale_one = gets.strip
    end
    scale_one
  end
end
