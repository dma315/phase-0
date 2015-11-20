# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def median(array)
  p array.sort!
  if array.length % 2 != 0 
    then p array[(array.length) / 2] # Indexing starts from 0
    else p 1.0 * (array[array.length / 2] + (array[(array.length / 2)-1]))/2
  end
end


# 3. Refactored Solution



# 4. Reflection