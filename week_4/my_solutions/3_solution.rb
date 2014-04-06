# U2.W4: Separate Numbers with Commas


# Pseudocode

# Input: an integer
# Output: integer with commas in correct place
# Steps:
# define a method seperate_comma that takes a number as input
# change number to string
# set number array equal to split number into digits and put into an array

# if array length is larger than or equal to 7
# 	insert commas at position -7 and -4
# elsif array length is larger than or equal to 4
# 	insert comma at position -4
# else
# 	return original array

# join elements in array into string

	

# Initial Solution

# def separate_comma (number)
# 	number_array = number.to_s.split('')

# 	if number_array.length >= 7
# 		number_array.insert(-7, ",")
# 		number_array.insert(-4, ",")
# 	elsif number_array.length >= 4
# 		number_array.insert(-4, ",")				
# 	end
# 	number_array.join
# end




# Refactored Solution


def separate_comma (number)
	number_array = number.to_s.split('')
	nlength = number_array.length

	if nlength >= 7
		number_array.insert(-7, ",")
		number_array.insert(-4, ",")
	elsif nlength >= 4
		number_array.insert(-4, ",")				
	end
	number_array.join
end





# Reflection 


What parts of your strategy worked? What problems did you face?
I tried to focus more on getting my pseudo code into a clear, implementable format before jumping into any coding this time.
I'm not sure if the exercise was simple or this method worked, or both.

What questions did you have while coding? What resources did you find to help you answer them?
I didn't really have any questions while coding for once!  I used what I learned in the cipher challenge.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I'm getting more used to pseudocoding, but sometimes I have trouble breaking down the challenge into small easily implementable steps.

Did you learn any new skills or tricks?
Not really!

How confident are you with each of the learning objectives?
I think I'm fairly confident with the learning objectives!  Hopefully this translates into being able to put them into practice.

Which parts of the challenge did you enjoy?
I enjoyed getting it done!

Which parts of the challenge did you find tedious?
I wish there was a way to do this for all numbers, no matter how many digits and without using a huge if statement

