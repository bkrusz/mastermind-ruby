require './Series.rb'

class Logic
  attr_reader :turn_count

  def initialize(series_string)
    @series = Series.new(series_string)
    @turn_count = 0
  end
end