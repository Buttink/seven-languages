
def getGuess
  guess = gets().to_i
end

def checkGuess actual, guess
  return actual <=> guess
end

def printResult result
  if result == 0
    puts "Correct!"
    result = true
  elsif result == 1
    puts "Low"
    result = false
  else
    puts "High"
    result = false
  end

  return result
end

def game actual
  check = lambda { |guess| checkGuess(actual, guess) }
  unless printResult(check.call(getGuess()))
    game(actual)
  end
end

game(rand(10))
