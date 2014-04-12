# U2.W5: Virus Predictor

# I worked on this challenge [with: Allison Wong and Dominick Oddo].

# EXPLANATION OF require_relative
# Requiring oustide file, importing file, "state_data.rb"
# There is a has within a hash, the difference in assignment is between strings and symbols 
require_relative 'state_data'

class VirusPredictor
# Initializing all the variables from the parameters given from the input
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  
  # Scope of instance vraibles is class wide, virus effects calls these private methods that are defined later with the public (to class) instance variables. 
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end
  
  # Can only be called by a method within the class. If we cut and pasted it above the virus_effects method that would be private too and the driver code wouldn't run 
  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  # Private method that defines the formula for predicted deaths to population density 
  def predicted_deaths(population_density, population, state)
     number_of_deaths = (@population * 0.4).floor if @population_density >= 200
     number_of_deaths = (@population * 0.3).floor if @population_density >= 150
     number_of_deaths = (@population * 0.2).floor if @population_density >= 100
     number_of_deaths = (@population * 0.1).floor if @population_density >= 50
     number_of_deaths = (@population * 0.05).floor if @population_density < 50

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Another private method that defines the formula for spreed of spreed to population density
  def speed_of_spread(population_density, state) #in months
    speed = 0.0
    speed += 0.5 if @population_density >= 200
    speed += 1 if @population_density >= 150
    speed += 1.5 if @population_density >= 100
    speed += 2 if @population_density >= 50
    speed += 2.5 if @population_density < 50

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:pop], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects

STATE_DATA.each_key do |state|
    state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread])
state.virus_effects
end

