# U2.W4: U2.W4: Accountability Group Creator!


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: array of names from accountability group
# Output: multiple arrays of 4 person groups for 3 different units
# Steps:
# define method that takes array of names as input
# create arrays for unit
# shuffle array
# slice array into groups of 4, each group as an array.
# if arry % 4 has, remainder, shovel each remainder in the next array
# return the unit group



# 3. Initial Solution

# def unit_creation (array)
# 	array.shuffle!
# 	unit_group = array.each_slice(4).to_a

# 	if array.length % 4 == 1
# 		unit_group[0] << array[-1]
	
# 	elsif array.length % 4 == 2
# 		unit_group[0] << array[-1]
# 		unit_group[1] << array [-2]
	
# 	elsif array.length % 4 == 3
# 		unit_group[0] << array[-1]
# 		unit_group[1] << array[-2]	
# 		unit_group[2] << array[-3]		
# 	else
# 	end
# 	return unit_group
# end

# unit_creation(names)


# 4. Refactored Solution


def unit_creation (array)
	array.shuffle!
	unit_group = array.each_slice(4).to_a
	
	remainder = array.length % 4

	i = 0
	while i < remainder
		unit_group[i] << array[0 - (i + 1)]
		i += 1
	end

	return unit_group

end

# 1. DRIVER TESTS GO BELOW THIS LINE


describe 'unit_creation' do
  let(:names) { ["Adam Dziuk", "Adam Ryssdal", "Aki Suzuki", "Allison Wong", "Andra Lally", "Andrew McDonald", "Anup Pradhan", 
	"CJ Jameson", "Christopher Aubuchon", "Clark Hinchcliff", "Devin A Johnson", "Dominick Oddo", "Dong Kevin Kang",  
	"Eiko Seino", "Eoin McMillan", "Eric Wehrli", "Hunter T. Chapman", "Jacob Persing", "Jon Pabico", "Mary Huerster",
	"Parjam Davoody", "Samuel Davis", "Sebastian Belmar", "Shawn Seibert", "William Butler Bushyhead", 
	"Yuzu Saijo", "christiane kammerl"] }


  it "is defined as a method" do
    defined?(unit_creation).should eq 'method'
  end

  it "requires a single argument" do
    method(:unit_creation).arity.should eq 1
  end

end



# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# I got really stuck initially because I had no idea how to write driver tests and the link wasn't very helpful.  I looked at
# the previous week's challenges and tried to figure it out from there, but I still had trouble and my driver tests don't really
# do as much as I'd like.

# What questions did you have while coding? What resources did you find to help you answer them?
# I didn't remember about the array slicing method, so I had to look that up
# http://stackoverflow.com/questions/7907368/split-array-up-into-n-groups-of-m-size

# Also referenced this link
# http://www.ruby-doc.org/core-2.1.1/Array.html

# I'm actually not totally sure I even did the assignment right because the directions confused me a bit.  I wasn't sure how many
# factors this was supposed to take into account.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I was and still seriously am having trouble with driver tests.  I feel like I haven't given it my best try yet, so I'm going to
# do some research and then ask for help if I'm still stuck.

# Did you learn any new skills or tricks?
# I learned about slicing.  Also when I refactored my code I found that a lot of it was repetitive, so I used a loop and replaced
# some of the repetitive if statements.

# How confident are you with each of the learning objectives?
# I'm not sure I'm confident at all with the learning objectives, especially driver testing.

# Which parts of the challenge did you enjoy?
# I enjoyed working on pseudocode and trying to put down my ideas into something implementable first.

# Which parts of the challenge did you find tedious?
# I found the parts where I was clueless and just trying to research without really knowing what to search tedious.
