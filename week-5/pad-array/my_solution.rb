# Pad an Array

# I worked on this challenge with Yi Lu.

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input?
# => The inputs are an array, min_size and an optional padding value (which defaults to nil if not specified)

# What is the output? (i.e. What should the code return?)
# => For pad!, we want an altered array that follows the rules
# => For pad, there should be a new array, but not alter the original array

# What are the steps needed to solve the problem?
# => 1) Determine if the array length is greater or equal to the min_size
# => 1a) If yes, then return the original array
# => 1b) If no, then return an altered array or a new array (pad! or pad) with padding in the end

# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  # Your code here
  new_array = []
  if array.length >= min_size
    new_array.replace(array)
  else
    pad = [value] * (min_size - array.length)
    array.replace(array + pad)
  end 
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = []
  if array.length >= min_size
    new_array.replace(array)
  else
    pad = [value] * (min_size - array.length)
    array = array + pad
  end 
end


# 3. Refactored Solution

# The solutions above I think are actually pretty simple

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# => Yeah, I think the pseudocode section made a lot of sense.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => Yes, I think the translation to code was pretty straightforward here.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => It was not, we were having quite a few issues with local variables and making sure that the new array was saving outside of the method.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => I actually thought ours was pretty decent. I think we could've used .times and .push to add to it, but this array math might be simpler.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think it's pretty descriptive. With array and then new_array to distinguish, and then pad as what was being added, I think it did what it needs to do.

# What is the difference between destructive and non-destructive methods in your own words?
# => Non destructive methods do not change the initial arguments passed into them, whereas destructive ones change them to however the method modifies them.
# => I do like the distinction made in the book though, where we shouldn't necessarily treat this as a rule of law, especially with user defined ones.
# => I like the best practice rules as well, and that we should be treating these as flags rather than rules. 