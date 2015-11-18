# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# => A positive integer
# What is the output? (i.e. What should the code return?)
# => A comma separated positive integer, where the commas are inserted every 3 digits (starting from the right)
# What are the steps needed to solve the problem?
# => 1) Define the method and its arguments
# => 2) Turn integer into an array of each character (as strings)
# => 3) Turn every 3rd element (from the back of the string) into an array of [",","n"]
# => 4) Flatten the array and join it back together into a string


# 1. Initial Solution

def separate_comma(integer)
  array = integer.to_s.split("")
  digit = array.length
  while digit > 3
  	array[digit - 3] = [",", array[digit-3]]
  	digit = digit - 3
  end
  return array.flatten.join
end

# 2. Refactored Solution

# Note, this is the same as my original solution. 
def separate_comma(integer)
  array = integer.to_s.split("")
  digit = array.length
  while digit > 3
  	array[digit - 3] = [",", array[digit-3]]
  	digit = digit - 3
  end
  return array.flatten.join
end

# 3. Reflection


# What was your process for breaking the problem down? What different approaches did you consider?
# => I think my initial idea of splitting the integer into an array is the right way to go
# => From there, I tried a few different ideas, including trying to insert commas as elements or using push, or a few other methods.
# => Ultimately, I think the idea I came up with (nesting an array inside another array) using a while loop was pretty solid.

# Was your pseudocode effective in helping you build a successful initial solution?
# => It was helpful, yes.
# => BUT, after like 1 attempt at it, I knew I needed a different path and went back and re-wrote my pseudocode to reflect my better idea.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# => I actually kept my original solution.
# => I was trying some weird stuff, where in order to insert commas correctly using an index, you'd have to reverse the array.
# => That wasn't super ideal.
# => I also tried .each_slice, but ran into some issues where the slices weren't always the same size.
# => All in all, I tried 3-4 other attempts at refactoring, but I like my initial solution a lot actually.

# How did you initially iterate through the data structure?
# => I just used a while loop!

# Do you feel your refactored solution is more readable than your initial solution? Why?
# => For once, I do not. 
# => I like my original solution
# => AND think it's actually more readable than any of the refactored (and failed) solutions I attempted

