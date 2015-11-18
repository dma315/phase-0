# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 0.5 hours on this challenge.

# 0. Pseudocode

# Input: The input would be calling calling methods or initializing the class.
# Output: The output would be said methods actually doing what they are intended.
# Steps: 
# => 1. Initialize the class
# =>  	a. I think the tough part here is paying attention to the terminology and the syntax (e.g. using @)
# =>  	b. The other part here that will be tough is know how each part links to another part within the class definition.
# => 2. Define the methods (sides / roll)


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Only positive integers are allowed")
    end
  end

  def sides
    p @sides
  end

  def roll
    p rand(@sides) + 1
  end
end


# 3. Refactored Solution

# Note:  Same as original solution
class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Only positive integers are allowed")
    end
  end

  def sides
    p @sides
  end

  def roll
    p rand(@sides) + 1
  end
end



# 4. Reflection



# What is an ArgumentError and why would you use one?
# => An argument error is an error that occurs when a given method is supposed to take some set of acceptable arguments
# => But the user has entered an incorrect / invalid parameter
# => An example can be passing a method 3 parameters when it only accepts 2
# => ...or passing it a negative number when it only takes positive ones
# => ...or passing it a float when it only takes integers
# => The reason we'd use one here is to create a set of rules for our class initilization method
# => ...such that we bring an error to the user's attention if they do something we don't want allowed for our class

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I think the new ones here are really only "raise" and "rand"
# => I think with raise, it's fairly straighforward in this case, since it was a simple if statement.
# => I can imagine them getting trickier though.
# => What I thought was interesting about the ArgumentError is that it's its own class (in that we need to initialize one via .new)
# => .rand was fairly straightforward as well, just need to know that when given an integer, it pulls random from 0 up to 1 less than the limit
# => So the tricky part was just adding 1 to it, so it doesn't roll 0 and can roll the max. 

# What is a Ruby class?
# => A Ruby class is a "blueprint"
# => It can have its own methods, in this cases, it the actions we defined where it states its number of sides or rolls
# => And what it knows about itself are "instance variables" -- in our example here, sides
# => They can also have class variables, which we didn't do here.
# => I think the difference is that an instance variable, like @sides, would be different for each die we initialized
# => But a class variable would be same for all die (maybe they are all square?)

# Why would you use a Ruby class?
# => If we want to create a set of rules or actions and things that are unique to a certain set of Objects we want to create.
# => Perhaps also if we want to create a hierarchy, so that we can better manage our data

# What is the difference between a local variable and an instance variable?
# => A local variable is only known inside the method its defined in
# => An instance variable is available to all objects within a certain class and are given an @ sign preceding it
# => An instance variable can be used across methods, whereas a local variable inside a method can only be used inside the method

# Where can an instance variable be used?
# => An instance variable can be used anywhere within its defined class
# => So the @sides instance variable we use could be called in other methods we define for this class or new methods we want to create.
# => So say we wanted to create a stacked die, that only rolls the # of sides it has 100% of the time
# => We could call @sides in that method