# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: a number (answer) and number (guesses)
# Output: symbol, or status of game
# Steps:
	# define class GuessingGame
	# 	initialize
	# 	set answer equal to instance variable answer

	# 	define method guess that takes input guess (integer)
	# 	if guess > answer   =>  guess needed to be an instance variable here
	# 		return :high
	# 	elsif guess == answer
	# 		return :correct
	# 	else
	# 		return :low

	# 	define solved?
	# 	if guess == answer
	# 		return true
	# 	else
	# 		return false


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
# 	@answer = answer
#   end
  
#   def guess (guess)
#   	@guess = guess
#   	if @guess > @answer
#   		return :high
#   	elsif guess == @answer
#   		return :correct
#   	else
#   		return :low		
#   	end
#   end

#   def solved?
# 	if @guess == @answer
# 		return true
# 	else
# 		return false
# 	end
#   end

# end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
	@answer = answer
  end
  
  def guess (guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif guess == @answer
  		return :correct
  	else
  		return :low		
  	end
  end

  def solved?
	unless @guess == @answer
		return false
	end
  end

end




# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)
p game.guess(100) == :high
p game.guess(0) == :low
p game.solved? == false
p game.guess(10) == :correct
p game.solved? == true


# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# I'm still not too used to classes and instance variables.  I was able to solve this after doing some rereading of
# our reccommended reading for this unit.

# What questions did you have while coding? What resources did you find to help you answer them?
# I wasn't sure why the code didn't work at first when guess wasn't an instance variable.  I think once I put the '@'
# symbol, then it was accessible by other methods such as solved?

# I dug through my notes and the reccommended reading to try to figure this out.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I guess I still don't think I totally understand classes or symbols, but I can use them.

# Did you learn any new skills or tricks?
# I think this is the first time I used symbols really.

# How confident are you with each of the learning objectives?
# I think I can use the things listed as learning objectives, I'm just not totally sure if I 100% understand them.

# Which parts of the challenge did you enjoy?
# I enjoyed breaking the challenge down into steps and figuring out how to make it work.

# Which parts of the challenge did you find tedious?
# None!