#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

my_name = NameData.new("David")
p my_name.name

class Greetings
  
  attr_accessor :person

  def initialize(person)
    @person = NameData.new(person)
  end

  def hello
  	puts "Hello #{@person.name}, how's it going?"
  end

end

my_greeting = Greetings.new("David")
p my_greeting.hello


# Reflection

# Release 1:
# What are these methods doing?
# => They are defining a class, and then outputting the instance variables with various methods

# How are they modifying or returning the value of instance variables?
# => They are modifying the instance variables in a weird hardcoded way...
# => They are writing them directly by taking the argument and passing it into the method and setting them as the instance variables.


# Release 2:
# What changed between the last release and this release?
# => We added attr_reader for :age

# What was replaced?
# => The method for calling .age, where all we do is refer to @age

# Is this code simpler than the last?
# => Yes.

# Release 3:
# What changed between the last release and this release?
# => We now added attr_writer for :age

# What was replaced?
# => The method that changes / modifies age

# Is this code simpler than the last?
# => Yes

# Overall reflection


# What is a reader method?
# => The ability to call an attribute as a method and return the value of the attribute

# What is a writer method?
# => The ability to write to attribute as a method with the =  and change the value of the attribute

# What do the attr methods do for you?
# => They allow you to efficiently define which attributes can be read and written to outside of the class definition

# Should you always use an accessor to cover your bases? Why or why not?
# => No, sometimes you don't want people being able to read or write outside the class perhaps

# What is confusing to you about these methods?
# => I played around with the emitter and recipient functionality a little and am a bit confused about how classes interact with each other still.
# => In terms of how we might initialize with specific arguments at least. Blank initilizations I think I get. 