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
=begin
What parts of your strategy worked? What problems did you face?
I had to read up on assert and refresh myself on blocks before I could do this.  I'm still not completely sure about
blocks and assert statements, but I understand them more than I did before.  As for my process and problems, I just
Didn't totally understand what worked and had to play with the example in irb and other examples from the suggested
reading.

What questions did you have while coding? What resources did you find to help you answer them?
I mainly relied on the suggested reading: http://www.tutorialspoint.com/ruby/ruby_blocks.htm
I wasn't too confident about assert or blocks.

What concepts are you having trouble with, or did you just figure something out? If so, what?
To be honest, I'm still having a bit of trouble wrapping my head around blocks and functions and assert statments.
I kind of know how they work and how to use them, but I think maybe I could use more practice or reading before
I'm really confident.

Did you learn any new skills or tricks?
Not really outside of the learning objectives

How confident are you with each of the Learning Competencies?
A bit shaky but I think I can do it.

Which parts of the challenge did you enjoy?
I enjoyed learning and figuring out how the code would work when I converted it.  The explanation of blocks was
pretty clear so I enjoyed going through that as well.

Which parts of the challenge did you find tedious?
None!
=end