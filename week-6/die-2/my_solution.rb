# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Pseudocode

# Input: We should be able to create Die.new([]) with an array, call .sides, and .roll
# Output:  It should return an error if the array is blank, and .sides should return the length of the array, and .roll should return one of the elements of the array
# Steps: 1) Initialize class with built in errors 2) Define .sides 3) Define .roll


# Initial Solution

class Die

  def initialize(labels)
    @options = labels
    if labels.class != Array
      raise ArgumentError.new("Argument must be an array")
    elsif labels.length < 1
      raise ArgumentError.new("Array cannot be empty")
    end
  end

  def sides
    p @options.length
  end

  def roll
    p @options[rand(@options.length)]
  end

end

# Die.new("Hello")
# Die.new(6)

  regular = Die.new([1,2,3,4,5,6])
  regular.sides
  regular.roll
  regular.roll
  regular.roll
  
  fortune = Die.new(['Good','Bad','Neither'])
  fortune.sides
  fortune.roll
  fortune.roll
  fortune.roll

# Refactored Solution

# See above

# Reflection


# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# => This time, we made the die a lot more complicated and flexible by allowing the sides to be more than just integers. 
# => Not much logic change needed, we just needed to feed it an array instead of an integer.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# => We should name things accordingly so that in the future, we know exactly what we're dealing with.
# => It also teaches us that we should strive for nice elegant solutions that work across a variety of cases.

# What new methods did you learn when working on this challenge, if any?
# => Nothing crazy new here, but I did call .class to raise an additional error if the die was initialized with anything other than an array.

# What concepts about classes were you able to solidify in this challenge?
# => Just extra practice helps. I think using the instance variables in another light and calling methods on them reinforces what we can do with them.
