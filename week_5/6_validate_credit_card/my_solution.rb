# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: 16 digit number
# Output: true or false
# Steps:
# define class CreditCard

# initialize takes input cardNumber
# 	if cardNumber length is not 16 digits, raise arguement error
# 	set @cardNumber equal to cardNumber

# define method check_card
# 	for each element in cardNumber
# 		if the element's index is not evenly divisible by 2
# 		element equals element times 2
# 	change the array to a string
# 	change the integer back to an array, separating each digit
# 	add each digit in the array (?)
# 	if the sum is evenly divisible by ten, return true
# 	otherwise return false


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
# 	def initialize (cardNumber)
# 		unless cardNumber.to_s.length == 16
# 			raise ArgumentError.new("Credit Card Number needs to be 16 digits")
# 		end
# 		@cardNumber = cardNumber
# 	end
# 	def check_card
# 		numArray = @cardNumber.to_s.split("").map(&:to_i)
# 		numArray.each_index do |x|
# 			if x % 2 != 0
# 				numArray[x] *= 2
# 			end
# 		end
# 		modifiedNumber = numArray.collect {|i| i.to_s}.join.split("").map(&:to_i)
# 		p modifiedNumber
# 		sum = 0
# 		modifiedNumber.each do |x|
# 			sum += x
# 		end
# 		p sum
# 		if sum % 10 == 0
# 			return true
# 		else
# 			return false
# 		end
# 	end
# end



# 4. Refactored Solution
class CreditCard
	def initialize (cardNumber)
		unless cardNumber.to_s.length == 16
			raise ArgumentError.new("Credit Card Number needs to be 16 digits")
		end
		@cardNumber = cardNumber
	end
	def check_card
		numArray = @cardNumber.to_s.split("").map(&:to_i)
		numArray.each_index do |x|
			numArray[x] *= 2 if x % 2 != 0
		end
		modifiedNumber = numArray.collect {|i| i.to_s}.join.split("").map(&:to_i)
		sum = 0
		modifiedNumber.each do |x|
			sum += x
		end
		if sum % 10 == 0
			return true
		else
			return false
		end
	end
end





# # 1. DRIVER TESTS GO BELOW THIS LINE
# p CreditCard.new(4408041234567893).check_card == true
# p CreditCard.new(4408041234567892).check_card == false





# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# I was able to break down the challenge into smaller steps that I thought would work, then research the methods that would
# enable it to actually work.  One problem I faced was not knowing the exact syntax to implement.  Another problem I faced
# was not knowing if my idea was the most efficient method.

# What questions did you have while coding? What resources did you find to help you answer them?
# I wasn't sure how to use .map and .collect, that is how to change the card number with the doubled digits into each
# individual digit.  I ended up going with an array.

# this helped a lot (with .collect)
# http://stackoverflow.com/questions/781054/convert-an-array-of-integers-into-an-array-of-strings-in-ruby

# and so did this (with .map)
# http://stackoverflow.com/questions/975769/converting-a-ruby-string-into-an-array

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I'm still not sure what the most efficient/elegant solution to this is.  I'm having trouble with refactoring a bit.  I am
# able to refactor my solution, but it isn't improved much.

# Did you learn any new skills or tricks?
# I learned more about map and collect, as mentioned above.  I will try to use them in the future.

# How confident are you with each of the learning objectives?
# I think I'm alright with the learning objectives.  Hopefully I have time to get some review in.

# Which parts of the challenge did you enjoy?
# I enjoyed getting my code to work.  At first my logic wasn't 100% sound, so I had to go back and review, and then improve
# the code.  With doubling the numbers starting from the last digit, this is actually starting from 15 in ruby, not 16.

# Which parts of the challenge did you find tedious?
# None!
