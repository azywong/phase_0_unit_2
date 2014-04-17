# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?  pop is removing the last element of contents array and returning it
										  # as a default, removing an item will remove the last item
		@contents.delete(item)
		return item
	end

	def dump  # what should this method return? empty contents array
		puts "Your drawer is empty."
		return @contents = []		
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end


class Silverware
	attr_reader :type

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true
	end

	def clean?
		if @clean == true
			return true
		else
			return false
		end
	end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents  # should return knife, spoon, fork

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents # should return knife, spoon, sharp knife

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents  # should return knife, spoon
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? - empty

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
removed_fork = silverware_drawer.remove_item(fork) # there was no fork to remove, had to add one.
removed_fork.eat

removed_fork.clean_silverware
silverware_drawer.add_item(removed_fork)
silverware_drawer.view_contents


#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion failed!" unless yield
end

assert { removed_fork.clean? == true }

assert { removed_knife.clean? == true }




# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I went through and tried to solve the errors one by one as they came up when I ran this in terminal.  Whenenever there was an 
error I didn't understand or had no line number, I tried to go through the code using common sense to figure it out.  I didn't
face any major problems, except the last part where the original code was trying to remove a fork from an empty drawer.  I was
able to figure uot what was happening by going through each step and figuring out what was in the drawer.

What questions did you have while coding? What resources did you find to help you answer them?
I didn't have any questions that needed to  be answered by resources this time!

What concepts are you having trouble with, or did you just figure something out? If so, what?
I got to practice asserts more, and while I know how to use them, I'm not sure if I could have written other driver code that
would have been more clear/helpful.

Did you learn any new skills or tricks?
Got to practice more with classes and assert!

How confident are you with each of the Learning Competencies?
I think I'm okay with what we were supposed to be able to do.  I'm not sure if there is a more sophisticated way to use
assert other than what I'm doing at the moment.

Which parts of the challenge did you enjoy?
I enjoyed practicing using assert!

Which parts of the challenge did you find tedious?
None
=end