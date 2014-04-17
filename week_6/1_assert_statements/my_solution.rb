# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# to my understanding
# define assert fuction
# will raise "Assertion failed!" unless name matches the input (yield)
# yield is calling the assert block
# defining name as "bettysue"
# the first assert passed because the inputs matched
# second assert failed because inputs did not match

# 3. Copy your selected challenge here

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

# p CreditCard.new(4408041234567893).check_card == true
# p CreditCard.new(4408041234567892).check_card == false


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed!" unless yield
end
card1 = CreditCard.new(4408041234567893)
assert { card1.check_card == true }

card2 = CreditCard.new(4408041234567892)
assert { card2.check_card == false }


# 5. Reflection
