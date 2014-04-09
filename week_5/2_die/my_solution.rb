# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: array of strings
# Output: number of sides and a random symbol from input array
# Steps:

# set @labels equal to labels

# define sides
# returns the length of labels array

# define roll
# generates random number from 0 to array length minus 1
# takes random number and returns corresponding symbol from array

# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.empty?
#   		raise ArgumentError.new("Only arrays containing something are allowed")
#   	end
#   	@labels = labels
#   end
  
#   def sides
#   	return @labels.length
#   end

#   def roll
#   	maximum = @labels.length - 1
#   	random_num = rand(0..maximum)
#   	return @labels[random_num]
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("Only arrays containing something are allowed")
  	end
  	@labels = labels
  end
  
  def sides
  	return @labels.length
  end

  def roll
  	maximum = @labels.length - 1
  	return @labels[rand(0..maximum)]
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# This was very similiar to the first challenge this week and I adopted the same strategy.  I just broke the problem down into
# steps, and then smaller steps and then coded.  I faced some minor problems because I originally forgot to do ends and did my
# arguement error incorrectly.

# What questions did you have while coding? What resources did you find to help you answer them?
# I didn't know how to check for an empty array, but I found this resource using google and it worked for me.

# http://stackoverflow.com/questions/6245929/check-for-array-not-empty-any

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I think I'm still not totally comfortable with using classes.  I can use them, but I don't think I completely understand how they
# work.  I will have to reread the suggested readings.

# Did you learn any new skills or tricks?
# I learned to tell if an array is empty or not.

# How confident are you with each of the learning objectives?
# I feel like I can use the learning objectives, but I don't totally understand them yet.  Need to work on that.

# Which parts of the challenge did you enjoy?
# I enjoyed getting the code to work not having to slog through something long.

# Which parts of the challenge did you find tedious?
# Nothing really.  I didn't quite enjoy refactoring, as I wasn't totally sure what to do in this case.