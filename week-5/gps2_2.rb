# Reflection


# What did you learn about pseudocode from working on this challenge?
# => I learned that it may be helpful to go into more details sometimes!

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# => I think arrays are a bit more intuitive, but hashes make more sense for storing two things

# What does a method return?
# => A method returns the last return / printed item

# What kind of things can you pass into methods as arguments?
# => We can pass all different data types, arrays, hashes, strings, integers

# How can you pass information between methods?
# => We can use the bang! operator to store stuff outside of the method
# => Or use .replace
# => Or we can use save the result of the method as something and use it later

# What concepts were solidified in this challenge, and what concepts are still confusing?
# => I definitely need to do a better job of understanding basic notation
# => I made things a lot more complicated by trying to use methods when I don't even have the basics of creating a hash down yet.

# Method to create a list
# input: String of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#  0. Define method (takes a string as argument)
#  1. Translate string into separate elements
#  2. Store them into the hash as keys (check for uniqueness of keys)
#  3. Set default value to 0
# output: Hash where the keys are the items, and the values are the quantities

# Initial solution
def grocery(string)
  array = string.split(" ")
  hash = Hash.new(0)
  array.each {|i| hash[i.to_sym] = 0}
  p hash
end

# Refactored solution
def grocery(string)
  Hash[string.split(" ").map {|i| [i.to_sym,0]}]
end

# Refactored for more readability
def grocery(string)
  array = string.split(" ")
  list = Hash.new(0)
  array.each {|i| list[i.to_sym] = 0}
  p list
end

list = grocery("banana apple spinach cake milk cookies")

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# 0. Defined method (takes a string and an optional quantity)
# 1. Add the new value to the hash, if no quantity specified, enter 0
# 2. If the item already exists, I think it should return "Item already exists"
# output: Show the hash with the new item added and quantity added

# Initial solution
def add_grocery(current_list,string,i = 0)
  addition = {}
  addition[string.to_sym] = i
  current_list.replace(current_list.merge(addition))
end

# Refactored solution
def add_grocery(current_list, string, i = 0)
  current_list[string.to_sym] = i
  p current_list
end

p add_grocery(list,"onion",5)
p list

# Method to remove an item from the list
# input: a hash, an item to remove
# steps: 
# 0. Define method
# 1. Remove selected item if it exists, if not, return original hash
# output: hash without the item

# Initial solution / Refactored solution (already 1 line)
def rm_grocery(current_list, string)
  current_list.reject! {|k| k == string.to_sym}
end

p rm_grocery(list,"spinach")
p list

# Method to update the quantity of an item
# input: Hash, string, how many to ad
# steps: Add the quantity for the given key as the value
# output: Hash with updated quantity

# Initial solution
def add_quantity(current_list, string, quantity)
  current_list[string.to_sym] = current_list[string.to_sym] + quantity
  p current_list
end

# Refactored solution
def add_quantity(current_list, string, quantity)
  current_list[string.to_sym] =+ quantity
  p current_list
end

add_quantity(list,"banana",2)
add_quantity(list,"milk",1)
add_quantity(list,"apple",3)
p list

# Method to print a list and make it look pretty
# input: Take just a hash
# steps: Iterate through the hash and print it out nicely.
# output: 1 line per pair with some words

# Initial solution
def print_list(current_list)
  puts "You need to buy the following:"
  current_list.each do |k,v|
    puts "#{k}: #{v}" if v > 0
  end
end

print_list(list)