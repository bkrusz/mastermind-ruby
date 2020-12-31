require './Series'

class Display
  def start
    print ''
  end

  def how_to_play
    puts 'Mastermind is a game in which one play creates a combination of 4 pegs'
    puts 'in 4 positions. It is then the goal of the other player to guess the'
    puts 'correct combination. Hints will be given, in which a 1 means a number'
    puts 'guesed is in the series, and a 2 meaning the number and positition is'
    puts 'correct.'
    puts ''
    puts 'In this version, the computer will generate a set of 4 numbers, 0-6,'
    puts 'and the player will have 8 attempts to guess it correct, where a correct'
    puts 'number is indicated with a 1, and a correct number in the correct position'
    puts 'is indicated with a 2'
    puts ''
  end

  def hint(comparison)
    print comparison
  end

  def lose
    print ''
  end

  def win
    print ''
  end
end
