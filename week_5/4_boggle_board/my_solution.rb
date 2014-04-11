# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# define method create_word that takes board and (multiple) coords as input
# for each set of coodinates
# 	take board[coordinates] to access each element to be included in an array
# 	and join the result into a string


# Initial Solution

def create_word (board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution

# I wasn't sure if we were supposed to do this differently than the example and I
# found this to be clear and concise, so I didn't have refactoring ideas.


# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
p create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# define method get row that takes row as input
# returns the contents of that array


# Initial Solution

def get_row(board, row)
	return board[row]
end


# Refactored Solution

# I didnt feel the need to refactor this, as it was only a few lines and was pretty clear
# on the outset.


# DRIVER TESTS GO BELOW THIS LINE
p get_row(boggle_board, 1) ==  ["i", "o", "d", "t"]
p get_row(boggle_board, 2) ==  ["e", "c", "l", "r"]




#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# define get_col that takes board and col as input
# for each array in board
# 	return the col-number element in that array


# Initial Solution

# def get_col (board, col)
# 	@col = col
# 	contents = []
# 	board.each do |row|
# 		contents << row[@col]
# 	end
# 	return contents
# end

# Refactored Solution

def get_col (board, col)
	contents = []
	board.each do |row|
		contents << row[col]
	end
	return contents
end

# DRIVER TESTS GO BELOW THIS LINE

p get_col(boggle_board, 1)  ==  ["r", "o", "c", "a"]
p get_col(boggle_board, 0)  ==  ["b", "i", "e", "t"]




# Reflection 

# What parts of your strategy worked? What problems did you face?
# I tried to do research on what I didn't know/understand and attempted to break down the neccessary work into
# small steps.  I wasn't too familiar with multidimensional arrays, so I spent some time in irb figuring
# that out first.

# What questions did you have while coding? What resources did you find to help you answer them?
# I wasn't too familiar with multidimensional arrays, so I used this resource to refresh myself on how to 
# access the elements inside.
# http://stackoverflow.com/questions/7014052/ruby-multidimensional-array

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I figured out how to access elements in a multidimensional array and also how to iterate over one.
# I'm still not to sure about refactoring, as I think its hard to think of a better way to solve a challenge
# after I may have done it a very ineffficient but time consuming way.  Being too close to the problem makes
# me a bit nearsighted when it comes to finding the solution.

# Did you learn any new skills or tricks?
# As mentioned above, I learned more about multidimensional arrays.

# How confident are you with each of the learning objectives?
# I can navigate through the learning objectives.  Maybe not with total confidence and I will definitely want
# to review them later.

# Which parts of the challenge did you enjoy?
# I enjoyed trying to figure out how to do each step within the challenge and implementing new things.

# Which parts of the challenge did you find tedious?
# None!