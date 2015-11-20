# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def get_grade(array)
  score = 1.0 * array.reduce(:+) / array.length
  p case when score >= 90 then 'A'
    when score >= 80 then 'B'
    when score >= 70 then 'C'
    when score >= 60 then 'D'
    else 'F'
  end
end


# 3. Refactored Solution



# 4. Reflection