class Series
  attr_reader :series

  def initialize(series_string)
    @series = series_string.split(//, 4)
  end

  def series=(series_string)
    @series = series_string.split(//, 4)
  end

  def equals?(guess)
    @series == guess
  end

  def equals_at_index?(guess, index)
    @series[index] == guess[index]
  end

  def include?(guess)
    count = 0
    for i in 0..3
      if @series.include?(guess[i])
        count++
      end
    end
    return count
  end
  
end