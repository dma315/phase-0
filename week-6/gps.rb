# Your Names
# 1) Tom McHenry
# 2) David Ma

# Refactor List
#  1) Fix error counter
#  2) Retrieve the serving size value more efficiently
#  3) Fix up case statement
#  4) Remove serving size mod local variable
#  5) Rename things better
#  6) Add new feature to suggest other baking items

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

=begin
def serving_size_calc(item_to_make, order_quantity)
  #Defines baking items in a hash with serving size as value
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #Counts number of errors
  error_counter = 3
  
  #Iterates through each item in the library
  library.each do |food|
    #Checks if the item_to_make is in the library hash
    if library[food] != library[item_to_make]
      #Decrements the error counter (for some reason)
      p error_counter += -1
    end
  end

  #If the error counter is more than one
  if error_counter > 0
    #raises an argument error
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #Sets the serving_size to the serving size from library's key
  serving_size = library.values_at(item_to_make)[0]
  #Sets serving_size_mod to modulo of order quantity and serving size
  serving_size_mod = order_quantity % serving_size

  #Case statement to return whether or not the order quantity and serving size divide evenly
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
=end

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

  units_to_make = order_quantity/library[item_to_make] 
  leftover = order_quantity % library[item_to_make]
  
  suggested_items = library.select { |food,quantity| leftover >= quantity }.keys.join(", ")
  
  if order_quantity % library[item_to_make] == 0
    return "Calculations complete: Make #{units_to_make} of #{item_to_make}"
  else 
    return "Calculations complete: Make #{units_to_make} of #{item_to_make}, you have #{leftover} leftover ingredients. Suggested baking items: #{suggested_items}."
  end

end

# Input: Leftover, a hash of possible values
# Output: a string of stuff we can make
# Steps: 
# 1) Grab all keys where leftover value > values in the hash
# 2) Pull it into an array
# 3) Join and comma separate
# 4) Spit it out somehow into the string

p serving_size_calc("pie", 12)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# => We learned a lot about how to be efficient in *thinking* so that we don't write bad / hacky code
# =>  I'm sure a lot of the stuff here was intentionally bad, but it's nice to see that my pair and I agreed on how to make it simpler 

# Did you learn any new methods? What did you learn about them?
# => Nothing crazy today, reinforced use of .select, which was nice

# What did you learn about accessing data in hashes? 
# => We learned how to not access data in hashes!
# => We learned about how the original code's iterator was invalid because it didn't specify both a key and value
# => Leaned how to overly convolute the seemingly easy task of retrieving a value from a hash for a given key...

# What concepts were solidified when working through this challenge?
# => It's good to see complex stuff to reinforce the basics I think.
# => I also learned about how breaking a problem down in to several steps really helps simplify things. 


