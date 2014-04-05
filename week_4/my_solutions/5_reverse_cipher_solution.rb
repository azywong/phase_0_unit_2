# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)                        # defines method that takes a sentence as input
    alphabet = ('a'..'z').to_a                           # defines alphabet as an array containing a-z
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]      # rotates alphabet by 4, turns alphabet and rotated alphabet into an array of arrays (pairs).  Turns array of arrays into a hash equal to cipher.
    spaces = ["@", "#", "$", "%", "^", "&", "*"]         # defines spaces as an array containing bunch of symbols
    
    original_sentence = sentence.downcase                # makes original sentence lowercase
    encoded_sentence = []                                # defines encoded_sentence as empty array
    original_sentence.each_char do |element|             # loop through each character (element) of original_sentence
      if cipher.include?(element)                        # if the hash cipher includes the element (is a letter of the alphabet)
        encoded_sentence << cipher[element]              # shovel the corresponding ciphered element into the encoded sentence array
      elsif element == ' '                               # or if the element is a space
        encoded_sentence << spaces.sample                # shovel a random element(sample) from the array spaces into the encoded entence
      else                                               # otherwise
        encoded_sentence << element                      # shovel the element into the encoded sentence array.
      end
     end
    
    return encoded_sentence.join                         # joins all elements of the encoded_sentence array into a string
end


# Questions:
# 1. What is the .to_a method doing?
    # it is changing the string of the alphabet into an array.

# 2. How does the rotate method work? What does it work on?
    # the rotate method rotates the array so the element at the index count is the first element of a new array.  It works on arrays.

# 3. What is `each_char` doing?
    # each_char is iterating through each character in the string

# 4. What does `sample` do?
    # sample returns a random value or multiple random values (if specified) from the array

# 5. Are there any other methods you want to understand better?
    # I want to understand zip better.  I think I understand it in this context, but I might not think to use it on my own

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
    # This code looks a lot better than my refactored solution of the original cipher code.
    # it's a lot cleaner and the if statement is much more simple, and is the main bulk of the code with less extra
    # the use of a hash as a cipher makes the if statement bit cleaner

# 7. Is this good code? What makes it good? What makes it bad?
    # I'm not sure if this is good or bad code to be honest.  I think the good points are that its short and very compact
    # On the other hand, that makes some of the steps hard to follow, like when the cipher hash is formed.  
    # But I'm not sure what a better way of doing this is.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# I didn't really have a strategy other than looking up what I didn't know in ruby docs and google.  I encountered a bunch of methods
# that I wasn't familiar with, but I read documentation and look up examples.

# What questions did you have while coding? What resources did you find to help you answer them?
# I mainly looked at the ruby docs page on arrays.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I was having trouble with .zip and didn't understand the explanation or examples for the longest time.

# Did you learn any new skills or tricks?
# I learned about zip, rotate and sample , and refreshed on each_char and include

# How confident are you with each of the learning objectives?
# I think I'm alright with the learning objectives in this.  Hopefully I can put them to use in the future!

# Which parts of the challenge did you enjoy?
# I enjoyed learning things and figuring out how the code worked, kind of like a puzzle.

# Which parts of the challenge did you find tedious?
# none!