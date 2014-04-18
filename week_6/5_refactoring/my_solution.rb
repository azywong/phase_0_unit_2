# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

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
# 			numArray[x] *= 2 if x % 2 != 0
# 		end
# 		modifiedNumber = numArray.collect {|i| i.to_s}.join.split("").map(&:to_i)
# 		sum = 0
# 		modifiedNumber.each do |x|
# 			sum += x
# 		end
# 		if sum % 10 == 0
# 			return true
# 		else
# 			return false
# 		end
# 	end
# end


# Refactored Solution


class CreditCard
	
	def initialize (cardNumber)
		unless cardNumber.to_s.length == 16
			raise ArgumentError.new("Credit Card Number needs to be 16 digits")
		end
		@cardNumber = cardNumber
	end

	def check_card
		numArray = @cardNumber.to_s.split("").map(&:to_i)
		
		numArray.each_index { |x| numArray[x] *= 2 if x % 2 != 0 }

		modifiedNumber = numArray.collect {|i| i.to_s}.join.split("").map(&:to_i)

		sum = modifiedNumber.reduce(:+)
		
		sum.%(10).zero?
	
	end
end



# DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end
card1 = CreditCard.new(4408041234567893)
assert { card1.check_card == true }

card2 = CreditCard.new(4408041234567892)
assert { card2.check_card == false }




# Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I looked over ruby docs and my code to see if there was anything I could improve on or make more clear.  The main issue was
that I had used reduce before, but had totally forgotten about it after a week or two.  Reading over ruby docs helped refresh
my memory, and google helped to find specific parts of ruby docs.

What questions did you have while coding? What resources did you find to help you answer them?
I mainly looked at ruby docs for any refreshers/new knowledge.   I didn't have any specific questions this time, just more
efficient ways to do what I already did.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I'm not having trouble with any concepts, but I'm just strugglign to remember everything I've used.

Did you learn any new skills or tricks?
I refreshed myself on map and reduce.  I need to work on remembering methods I've used before, especially when they are more
efficient than what I have  been using.

How confident are you with each of the Learning Competencies?
I think I'm alright with the Learning Competencies.  I need to work on refactoring and more efficient ways of writing code.
There is always room for improvement!

Which parts of the challenge did you enjoy?
I enjoyed going through and improving code that I wrote previously.

Which parts of the challenge did you find tedious?
None!
=end