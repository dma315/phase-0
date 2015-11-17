# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#input array, min_size and the padding value

# What is the output? (i.e. What should the code return?)
#for pad! should be altered array
#for pad should be a new array

# What are the steps needed to solve the problem?
#1st - determine if the array length is greater or equal to the min_size
#if yes, then return the original array
#if no, then return an altered array or a new array (pad! or pad) with padding in the end


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size
    array
  else
    additional_element = [value] * (min_size - array.length)
    array.replace(array + additional_element)
  end 
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = []
  if array.length >= min_size
    new_array.replace(array)
  else
    additional_element = [value] * (min_size - array.length)
    array = array + additional_element
  end 
end


# 3. Refactored Solution



# 4. Reflection