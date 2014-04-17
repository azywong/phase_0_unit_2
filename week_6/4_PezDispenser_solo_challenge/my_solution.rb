# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

=begin
define class PezDispenser
	initialize
	with input is a an array of flavors

define pez_count
length of array + 1

define get_pez
use shift to removed and return first element

define add_pez input is a pez flavor
shovel the pez flavor into the array

define see_all_pez
array to string using join

=end

# 3. Initial Solution

# class PezDispenser

# 	def initialize (flavors)
# 		@flavors = flavors
# 	end

# 	def pez_count
# 		count = @flavors.length + 1
# 	end

# 	def get_pez
# 		@flavors.shift
# 	end

# 	def add_pez (pez)
# 		@flavors << pez
# 	end

# 	def see_all_pez
# 		p @flavors		
# 	end
# end
 


# 4. Refactored Solution

class PezDispenser

	def initialize (flavors)
		@flavors = flavors
	end

	def pez_count
		count = @flavors.length + 1
	end

	def get_pez
		@flavors.shift
	end

	def add_pez (pez)
		@flavors << pez
	end

	def see_all_pez
		@flavors.join(", ")
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts super_mario.see_all_pez 
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"
assert { super_mario.pez_count == 10}



# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I broke down the problem into smaller components/necessary methods from the user stories and driver code.  Then I added steps in
pseudo code until I had something workable that could easily be translated into working code.  I was able to put into practice
various things I had learned over the past few weeks.  The main problem I faced was remembering the syntax/exactly how to
implement things.

What questions did you have while coding? What resources did you find to help you answer them?
I forgot that using join was a viable method until I checked my previous exercises where I had used it before.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I'm still not sure if I'm using assert up to its full potential, but maybe looking at more examples will help.  I'm also concerned
that I could have my code "do" more, but it seems to match the user stories so I'm pretty satisfied.

Did you learn any new skills or tricks?
I didn't learn anything new persay, but I was able to practice things I had learned and hopefully more firmly engrain it

How confident are you with each of the Learning Competencies?
I think I'm alright with the learning compentencies this time.  This exercise wasn't frustrating and I was able to put what I
learned into practice.

Which parts of the challenge did you enjoy?
I enjoyed reading through the userstories and translating that into what I should make the code do.  It was convinient that the
driver code named the methods too.

Which parts of the challenge did you find tedious?
None!

=end