class Series
  attr_reader :series
  attr_accessor :turn_count

  def initialize
    @series = Array.new(4)
    random_series
    @turn_count = 0
  end

  def series=(series_string)
    @series = series_string.split(//, 4)
  end

  def random_series
    (0..3).each do |i|
      @series[i] = (rand 0..6).to_s
    end
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
    (0..3).each do |i|
      hint_array[i] = if equals_at_index?(guess, i)
                        2
                      elsif include?(guess, i)
                        1
                      else
                        0
                      end
    end
    hint_array.sort.reverse
  end
end
