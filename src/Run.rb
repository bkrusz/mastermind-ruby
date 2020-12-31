require './Series'
require './Display'

def new_round(series)
  series.random_series
  series.turn_count = 0
  display.how_to_play
end

def win?
end

def new_turn(series, display)
  guess = gets.chomp
  display.hint(series.full_comparison(guess))
  series.turn_count += 1
end

def run
  series = Series.new
  display = Display.new

  display.how_to_play

  while series.turn_count < 8
    new_turn(series, display)
  end
end

run
