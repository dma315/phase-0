# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.grep(/#{thing_to_find}/) # Key here is to put the thing in the #{} notation.
end

def my_hash_finding_method(source, thing_to_find)
  source.select {|k,v| v == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
# => For the array solution, I used grep, which iterates through the array searching for the specified argument
# => The toughest part for this was actually figuring out the syntax to make sure the thing_to_find variable was being parsed correctly by grep
# => For the hash solution, select seemed like the logical thing to use, which selects the key/value pairs that match a specified condition in a code block.
# => The only tricky part here is that .select on a hash returns a hash, so we needed to string another method to the end to grab only the keys as intended.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.replace( 
    source.map do |i|
    if i.is_a? Integer
      i += thing_to_modify
    else i
    end
  end
  )
end

def my_hash_modification_method!(source, thing_to_modify)
  source.replace(
    source.each {|k,v| source[k] = v += thing_to_modify}
  )
end

# Identify and describe the Ruby method(s) you implemented.
# => For the array, we used map, which creates a new array via the following code block. And within the code block, we supplied flow control to only change the integers.
# => To make the method destructive, we used .replace to replace the original source array.
# => For the hash, we just needed to iterate through each key/value pair and add the new age to each value, and then replace the original hash.


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|i| i.to_s}
end

def my_hash_sorting_method(source)
  source.sort_by {|k,v| v}
end

# Identify and describe the Ruby method(s) you implemented.
# => For both challenges, the sort_by method is the cleanest way to go.
# => For arrays, the key is making sure to convert each element to a string so there's a common way to compare each element.
# => Not doing so results in an error. Doing so sorts it alphabetically as strings, where numbers come before capital letter, which then come before non-caps.
# => For arrays, since we know all of the values are integers, it's a bit more straightforward.


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#