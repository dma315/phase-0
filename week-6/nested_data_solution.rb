# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

p number_array.map { |element|
  if element.kind_of?(Integer)
    element + 5
  else element.map { |nested|
    nested + 5
    }
  end
  }


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

p startup_names.map { |element|
  if element.kind_of?(String)
    element + "ly"
  else element.map { |nested|
    if nested.kind_of?(String)
      nested + "ly"
    else nested.map { |double|
      double + "ly"}
    end}
  end
  }

p startup_names.flatten.map { |name|
  name + "ly"
  }


# Reflection

# What are some general rules you can apply to nested arrays?
# => That they are tedious and require reading into each layer to make sure we are pulling the right thing.

# What are some ways you can iterate over nested arrays?
# => We can use .each / .map and some flow control, but I feel like we weren't able to find a nicer more elegant solution

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# => Flatten is a nice option if we don't care about preserving the original structure, but could not find a way to go n-layers deep without nesting flow control.
# => Feel like there's something with recursion that we're missing here. 