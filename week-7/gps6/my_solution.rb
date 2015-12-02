# Virus Predictor

# I worked on this challenge [ with: David Ma ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Allows for access to methods in another file stored locally, or remote data
# Difference between relative and just require is that relative looks in the folder where the file is, and require looks for an absolute path

# {"Alabama" => {pop_den: 92, pop: 100} }
# {pop_den: 92, pop: 100}

# "key" => value
# key: value

# So if the key is a string or an integer, you must use hash rocket syntax

# "string": value # This will not work.

# key: value is just a shortcut for the hashrocket version...
# :key => value


# my_array[index] => element
# my_hash[key] => value

# {key: value}
# my_hash[key:] # This does not work!

# Even if you use colon syntax, remember that its a shortcut for a regular ol symbol.
# my_hash[:key]

# STATE_DATA
# A variable in all caps is a CONSTANT
# A constant variable has global scope.
# Its basically the same thing as a global variable.
# HOWEVER, you are not supposed to re-define a constant.

# STATE_DATA = "Test" solution.rb:98: warning: already initialized constant STATE_DATA 
#solution.rb:43: warning: previous definition of STATE_DATA was here 


require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # aka your run / execute method.
  # You control when and how a user can call methods.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  
  private
  # Methods in a class are public by default
  # Any method below private, is private.
  # A private method is only visible INSIDE the class.
  # That means other methods inside the class can call it..
  # But it cannot be called outisde the class, aka in the driver code.
  
  
  # Driver Code: ------
  # current_state = VirusPred.new
  # current_state.virus_effects
  # current_state.predicted_deaths
  # ---------------------
  
  def predicted_deaths #(population_density, population, state)
    
    # How are arguements initialized inside a method?
    # - As local variables.
    
    
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor #.floor is to always round down the number
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


# 1. Make the template
# current_state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
# current_state.virus_effects

# 2. The loop.
# array.each do |element|
# hash.each do |key, value|

# 3. put it together
# STATE_DATA.each do |state_name, state_data|
#   current_state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
#   current_state.virus_effects
# end



# array.include?
# hash.include?

# You can call MOST array methods on a hash.

# hash.keys => returns an array of all the keys.
# This is how Ruby calls array methods on a hash.


# my_array = ["a", "b", "c"]
# my_hash = {1 => "a", 2 => "b", 3 => "c"}

# my_array[0] => "a"
# my_hash[0] => "a"

# array[index] => element
# hash[key] => value



STATE_DATA.each do |state_name, state_data|
  # state_name => "Alabama"
  # state_data => {pop_den: 92, pop: 100}
  # hash[key] => value
  # STATE_DATA[state_name] => {pop_den: 92, pop: 100}
  # STATE_DATA[state_name] == state_data 
  current_state = VirusPredictor.new(state_name, state_data[:population_density], state_data[:population])
  current_state.virus_effects
end



# rhode_island = VirusPredictor.new("Rhode Island", ....)

# Rather than recreating all 50 of these 1 by 1... 
# Is there a way we can automate this process (read use a loop)


# How to use a template in a loop.

# 1. Take an existing piece of driver code...
#  - Figure out what parts change for each state?

# 2. Turn that driver code into a template, by replacing the changing parts with variables.

# 3. Use that template in a loop, passing the (current state) variable in each time.




#=======================================================================

# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# => One, because the keys are strings, requires hash rocket notation
# => The other, because it's symbols, can use the shortcut colon notation

# What does require_relative do? How is it different from require?
# => It checks for whether the thing being referenced exists and loads it
# => Different from require, where require checks an absolute path, vs. require relative checking in the working directory

# What are some ways to iterate through a hash?
# => In this case, we just used .each to go through the hash

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => We don't need to pass the arguments in, since we already have them stored as instance variables that are being referenced in the methods below.

# What concept did you most solidify in this challenge?
# => Nice to go through how to use instance variables more efficiently
# => And reinforce iterating through hashes
# => Require / require relative is a nice new concept
# => As is private!
