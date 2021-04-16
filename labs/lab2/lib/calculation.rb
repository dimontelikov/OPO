class Calculation
  def initialize(array_of_string)
    @data = array_of_string
  end

  def search_max
    @data.max
  end

  def search_min
    @data.min
  end

  def search_mean
    (@data.inject { |sum, elem| sum + elem }.to_f / @data.size).round(2)
  end

  def search_corrected_sample_variance
    mean = search_mean
    sum = @data.map { |elem| (elem - mean)**2 }
    (sum.inject(:+) / (@data.size - 1)).round(2)
  end
end
