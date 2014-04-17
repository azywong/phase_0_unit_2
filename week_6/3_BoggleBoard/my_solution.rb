# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode
=begin
define class BoggleBoard

initialize that takes variable board

define method create_word takes *coords as input
for each coordinate, take the corresponding value from the board and join these values

define get_row takes row as input
returns contents of row

define get_col takes col as input
create empty array contents
for each element of board
shovel the column number of that element into contenst
return contents
=end

# 3. Initial Solution
class BoggleBoard
 
  def initialize (board)
  	@board = board
  end

  def create_word (*coords)
  	coords.map { |coord| @board[coord.first][coord.last] }.join("")
  end

  def get_row (row)
  	return @board[row]
  end

  def get_col (col)
  	contents = []
  	@board.each do |row|
  		contents << row[col]
  	end
  	return contents
  end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution

# I couldn't think of a way to refactor this as I had already coded similar methods last week and refactored that.




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

def assert
	raise "Assertion failed!" unless yield
end

assert { boggle_board.create_word([3,2]) == "k" }

# implement tests for each of the methods here:

assert { boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code" }
assert { boggle_board.create_word([0,1], [0,2], [1,2]) == "rad" }
assert { boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock" }


assert { boggle_board.get_row(0) ==  ["b", "r", "a", "e"] }
assert { boggle_board.get_row(1) ==  ["i", "o", "d", "t"] }
assert { boggle_board.get_row(2) ==  ["e", "c", "l", "r"] }
assert { boggle_board.get_row(3) ==  ["t", "a", "k", "e"] }


assert { boggle_board.get_col(0)  ==  ["b", "i", "e", "t"] }
assert { boggle_board.get_col(1)  ==  ["r", "o", "c", "a"] }
assert { boggle_board.get_col(2)  ==  ["a", "d", "l", "k"] }
assert { boggle_board.get_col(3)  ==  ["e", "t", "r", "e"] }

# 5. Reflection 

=begin
You just made a transition from procedural programming to object-oriented programming! How is the implementation different?
What are the benefits to using the Object Oriented approach (even if it is a bit more code?)
The implementation is different mainly becuase classes are involved.  One of the benefits to using classes is that they are
resusable.  You can create more of the same class without having to rewrite code.

What parts of your strategy worked? What problems did you face?
I mainly followed the framework set out and the code from my previous boggleboard from last week.  Since I understood the
theory behind it already, then implementing it again was not too hard.  I broke down the challenge into small steps in
pseudo code, then did the code and modified the driver code.

What questions did you have while coding? What resources did you find to help you answer them?
I didn't really have any questions during this exercise, so I didn't use any outside resources this time.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I can use classes, but I feel like I don't really understand object-oriented programming yet.  I will have to do more reading
later and hopefully I'll understand it more then.

Did you learn any new skills or tricks?
Not really in this case.  I did get to transition to object-oriented programming, which I still don't think I totally understand
yet.

How confident are you with each of the Learning Competencies?
I think I'm okay with the Learning Competncies this time.  I just hope that I can understand them more.

Which parts of the challenge did you enjoy?
I enjoyed changing my original boggleboard code into using classes.

Which parts of the challenge did you find tedious?
I found converting the driver code to be a bit tedious
=end