class Series
  attr_reader :series
  attr_accessor :turn_count

  def initialize(series_string)
    @series = series_string.split(//, 4)
    @turn_count = 0
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

  def include?(guess, index)
    @series.include?(guess[index])
  end

  def full_comparison(guess)
    hint_array = Array.new(4)
    for i in 0..3
      if equals_at_index?(guess, i)
        hint_array[i] = 2
      elsif include?(guess, i)
        hint_array[i] = 1
      else
        hint_array[i] = 0
      end
    end
    return hint_array.sort.reverse
  end
end
