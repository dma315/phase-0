# Calculate the mode Pairing Challenge

# I worked on this challenge with Yi Lu

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
# => We are taking in an array
# What is the output? (i.e. What should the code return?)
# => And trying to return an array of the most frequent element in the original array (mode)
# What are the steps needed to solve the problem?
# => 1. Convert the array to a hash, where the keys are the elements of the array, values are the counts of the keys in the array
# => 2. Find the max value in the hash
# => 3. Output an array with the keys whose values equal the max value

# 1. Initial Solution

def mode(array)
  hash = Hash.new(0)
  array.each { |key| hash[key] += 1}
  max_value = hash.values.max
  output_array = hash.select { |key, value| value == max_value }.keys
  output_array
end

# 3. Refactored Solution

def mode(array)
  hash = array.group_by {|i| array.count(i)} 
  hash[hash.keys.max].uniq
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# => We went with creating a hash of keys that represented each unique element, and a counter that counted each instance.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# => As successful I'd say, I think both were pretty straightforward once we were able to think about it in smaller steps.

# What issues/successes did you run into when translating your pseudocode to code?
# => No big issues here. I still think the hardest part some times is figuring out when to store a variable and when not to.
# => I think the initial solution stores quite a few variables to get to the answer, whereas the refactored version gets more to the point.
# => But the refactored solution may seem more complicated, since there are more built in methods being used and strung along consecutively.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# => I really like the idea of group_by as a method here. I think the only challenge of it was seeing how it outputted the resulting hash.
# => Was slightly tricky getting it to find the max value and do uniqueness on the resulting array in an elegant way.