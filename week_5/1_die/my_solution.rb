# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: number of sides
# Output: sides and random roll
# Steps: 
	# define class Die
	# define initialize that takes variable sides
	# unless sides is more than one, raise ArgumentError
	# set instance variable @sides equal to input sides

	# define sides
	# return @sides

	# define roll
	# roll a random number between one and @sides.


# 3. Initial Solution

# class Die
#   def initialize(sides)
#   	 unless sides >= 1
#     raise ArgumentError.new("Only numbers larger or equal to one are allowed")
#   end
#     @sides = sides
#   end
  
#   def sides
# 	return @sides
#   end
  
#   def roll
#     rand(1..@sides)
#   end
# end



# 4. Refactored Solution

# I'm not sure if there is a better way to refactor this, as its so simple to start out with.
# will come back to this later if there is time.



# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# I just followed the directions and broke things down into smaller steps once I read up a bit on classes

# What questions did you have while coding? What resources did you find to help you answer them?
# I used ruby docs and the provided resources to get the hang of raising ArgumentError and random numbers

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Still wrapping my head around the idea of classes.  Hopefully it gets more intuitive as I do more with them

# Did you learn any new skills or tricks?
# As mentioned above, I learned more about classes and learned about ArgumentError and random numbers.

# How confident are you with each of the learning objectives?
# I'm still a bit shaky with classes, not confident I'm able to really explain them yet.

# Which parts of the challenge did you enjoy?
# For the most part it was enjoyable, especially learning and getting it to work.

# Which parts of the challenge did you find tedious?
# None!