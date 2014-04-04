# U2.W4: Homework Cheater


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: title, topic, year, statement, gender
# Output:
	# Essay Title
	# Topic Title
	# Name was an important person in year.  Pronoun will go down in history as a pivotal figure.
	# Statement
	# Pronoun's contribution to history is undeniable.

# Steps:

# create generic template and store it in an array (?)

# define method essay_writer that takes parameters: title, topic, year, statement
# 	insert title
# 	insert topic
# 	insert year
# 	insert statement
# 	get last name of person and insert


# 3. Initial Solution

# def essay_writer (title, topic, year, statement)
# 	template = ["My Super Extraordinary Totally Unique Essay", " was an imporant person in ", ".  ", " will go down in history as a pivotal figure.  ", 
# 	"\'s contribution to history is undeniable."]
# 	essay_array = Array.new(template)
# 	essay_array.insert(1, title)
# 	essay_array.insert(2, topic)
# 	essay_array.insert(4, year)
# 	essay_array.insert(7, statement)
# 	topic_split = topic.split(' ')
# 	topic_name = topic_split[1]
# 	essay_array.insert(6, topic_name)
# 	essay_array.insert(-2, topic_name)

# 	puts essay_array[0].to_s
# 	puts essay_array[1].to_s
# 	puts essay_array[2..-1].join
# end	


# 4. Refactored Solution

def essay_writer (title, topic, year, statement)
	template = ["My Super Extraordinary Totally Unique Essay", " was an imporant person in ", ".  ", 
		" will go down in history as a pivotal figure.  ", "\'s contribution to history is undeniable."]
	essay_array = Array.new(template)
	essay_array.insert(1, title).insert(2, topic).insert(4, year).insert(7, statement)
	topic_name = topic.split(' ')[1]
	essay_array.insert(6, topic_name).insert(-2, topic_name)

	puts essay_array[0].to_s
	puts essay_array[1].to_s
	puts essay_array[2..-1].join
end	

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.")





# 1. DRIVER TESTS GO BELOW THIS LINE

describe 'unit_creation' do
  let(:title, :topic, :year, :statement, :gender) { "The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male" }


  it "is defined as a method" do
    defined?(unit_creation).should eq 'method'
  end

  it "requires a five arguments" do
    method(:unit_creation).arity.should eq 5
  end

end




# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# I wasn't exactly sure how to store the template at first and whether or not I should use an object to store each person's information
# Also I was having trouble with writing driver code for this assignment.

# I finally settled on using an array to store the template, because I was most familiar with that structure.

# What questions did you have while coding? What resources did you find to help you answer them?
# I'm not sure I've used insert before, but I looked it up anyways
# http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-insert

# I also looked up join
# http://www.ruby-doc.org/core-2.0/Array.html#method-i-join

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I had the most trouble visualizing a way to complete this assignment efficiently or coming up with a more elegant solution.

# Did you learn any new skills or tricks?
# I read through ruby docs for this assignment and while I can't say that I can pinpoint anything new I learned.  I did get to use
# methods that I had looked at, but not used before.

# How confident are you with each of the learning objectives?
# I think I'm okay with the learning objectives in this chapter.  I completed the exercise, but there could be improvements made.
# Maybe if I have time at the end of the week I'll revisit this.

# Which parts of the challenge did you enjoy?
# I enjoyed trying to figure out how to tackle the assignment

# Which parts of the challenge did you find tedious?
# Again, I wasn't quite sure what to do for the driver code.


