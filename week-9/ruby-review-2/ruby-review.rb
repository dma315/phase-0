# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

#Define a method, "assert"
#Have it raise a string, "Assertion failed!" if the block it runs isn't true.


# 3. Copy your selected challenge here

def mode(elements)
  hash = elements.group_by {|i| elements.count(i)} 
    hash[hash.keys.max].uniq
end

# 4. Convert your driver test code from that challenge into Assert Statements

assert {mode([1, 2, 3, 4, 5, 5, 7]) == [5]}
assert {mode([4, 4, 5, 5, 6, 6, 6, 7, 5]) == [5,6]}
assert {mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"]) == ["banana","cherry"]}
assert {mode([4, 4, 5, 5, 6, 6, 6, 7, 5]) == [5]}

# 5. Reflection

# What concepts did you review in this challenge?
# => In this one, we learned a new way of testing code, by writing assert methods.
# => Seems nice, since it prevents us from having to print a ton of stuff out.

# What is still confusing to you about Ruby?
# => When to use classes an when not to.

# What are you going to study to get more prepared for Phase 1?
# => Spend more time understanding when to use classes.