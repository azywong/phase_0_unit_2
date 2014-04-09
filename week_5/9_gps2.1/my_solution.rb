# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 

#Myself with Emily Anderson (partner didn't show up)




# Our Refactored Solution


def bakery_num(num_of_people, fav_food)                 # this is defining bakery_num and takes 2 inputs
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}    # creates hash, keys are baked goods, values are how many you can feed
  pie_qty = 0                                           # sets pie_qty to zero
  cake_qty = 0
  cookie_qty = 0
  
  has_fav = false                                      # rename?

  my_list.each_key do |k|                               # iterates through each key in my_list
    if k == fav_food                                    # if they key matches fav_food input
        has_fav = true                                 # change has_fav to true
    end
  end
  
  if has_fav == false                                  # If food isn't in stock/ isn't found
    raise ArgumentError.new("You can't make that food")
  
  else
    fav_food_qty = my_list.values_at(fav_food)[0]       # quantity of people favorite food can feed
        
    if num_of_people % fav_food_qty == 0                # if num_of_people can be divided evenly by fav_food_qty
        num_of_food = num_of_people / fav_food_qty
        return "You need to make #{num_of_food} #{fav_food}(s)."
  
    else
        num_of_fav_food = num_of_people / fav_food_qty
        num_of_people = num_of_people % fav_food_qty
           
        while num_of_people > 0
          cake_qty = num_of_people / my_list["cake"]
          if num_of_people % my_list["cake"] > 0
            cookie_qty = num_of_people
            num_of_people = 0
          end  
        end
        
        if fav_food == "pie"
          pie_qty = num_of_fav_food
        elsif fav_food == "cake"
          cake_qty = num_of_fav_food
        else
          cookie_qty = num_of_fav_food
        end

    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
            
           
     end      
  end
end
 






#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 

# What parts of your strategy worked? What problems did you face?
# Reading through the code was extremely confusing.  It helped to take it one step at a time.

# What questions did you have while coding? What resources did you find to help you answer them?
# I didn't have any syntax issues this time, but the instructor was helpful when I got lost slogging through code.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I'm having trouble with when to use what loop.  Like when its appropriate to use different kinds of loops.  I tend to 
# stick with what I'm comfortable with, which may not be most efficient.

# Did you learn any new skills or tricks?
# Setting a variable as false on the output is definitely sometime I wouldn't think of on my own.

# How confident are you with each of the learning objectives?
# I don't think I used all the learning objectives, so I'm not sure if I'm totally comfortable with them yet.

# Which parts of the challenge did you enjoy?
# I enjoyed getting the code to work after I refactored it and understood what was going on.

# Which parts of the challenge did you find tedious?
# none!