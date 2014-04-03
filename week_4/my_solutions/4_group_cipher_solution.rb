# U2.W4: Cipher Challenge


# I worked on this challenge [with: Andra Lally].



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here?
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end  
#   return decoded_sentence # What is this returning?        
# end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # takes message, makes it lowercase and splits string into individual elements
  decoded_sentence = [] # empty array named decoded_sentence (will store decoded sentence)
            
  alphabet = ("a".."z").to_a  # alphabet (in order) array
  alphabet_clone =  ("a".."z").to_a # clone of alphabet array
  changed_alphabet = alphabet_clone.shift(4) # alphabet clone minus first 4 values 
  shifted_alphabet = alphabet_clone | changed_alphabet # alphabet clone (e - z) + changed alphabet (a - d)
  
  input.each do |x| # iterating over each element in message
    found_match = false
    shifted_alphabet.each do |y| # iterating over each element shifted alphabet array

       if x == y  # comparing x (input) and y (shifted alphabet)
        decoded_sentence << alphabet[shifted_alphabet.index(y)] # takes index of the matching element from shifted alphabet and shovels the corresponding value from alphabet into decoded sentence array.
        found_match = true
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # interchanges symbols for space in sentence
        decoded_sentence << " "
        found_match = true
        break
      end 
    end
    if not found_match  # for values where found match is not found, insert value
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("") # join sentence as a string
  decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }  # for numbers, divide given number by 100
  return decoded_sentence # returns complete sentence    
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")


# Reflection
#  What parts of your strategy worked? What problems did you face?
# We had a lot of trouble starting out visualizing how to go about cleaning up the code.  Once we thought of using an array for
# the cipher, things went a lot more smoothly.  Another challenge we faced was deleting extraneous code while still keeping
# functionatlity

# What questions did you have while coding? What resources did you find to help you answer them?
# We had questions about join and shift, which we both looked up in ruby docs
# http://www.ruby-doc.org/core-2.1.1/Array.html#method-i-join

# Also we looked up the syntax of how to generate an array with letters of the alphabet
# http://stackoverflow.com/questions/4846853/generate-array-of-all-letters-and-digits

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I had trouble with refactoring and getting rid of or slimming down code I thought was unecessary.  In theory some of our ideas
# would work, but in practice we failed a few times.

# Did you learn any new skills or tricks?
# I liked our idea of using shifted arrays instead of a hash.

# How confident are you with each of the learning objectives?
# I'm not 100% confident about the learning ojectives, as I feel like our code could probably be improved.  At the same time we
# spent a lot of time on this exercise, so I think we did make progress.

# Which parts of the challenge did you enjoy?
# I enjoyed pairing!  I was a good experience and  definitely couldn't have accomplished so much on my own.

# Which parts of the challenge did you find tedious?
# I found going through the code and trying to figure out what some of it meant tedious.