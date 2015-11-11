# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => Line 170
# 3. What is the type of error message?
# => Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
# => Unexpected end of input, it was expecting the keyword end
# 5. Where is the error in the code?
# => It's actually not in line 170, but rather that the while statement has an end (or maybe its the method), but both need an end.
# 6. Why did the interpreter give you this error?
# => The method is incomplete and needs an ending.

# --- error -------------------------------------------------------

south_park = 1

# 1. What is the line number where the error occurs?
# => Line 36
# 2. What is the type of error message?
# => It says 'in <main>', undefined variable or method
# 3. What additional information does the interpreter provide about this type of error?
# => Undefined local variable or method 'south park' for mainObject(Name Error)
# 4. Where is the error in the code?
# => south_park is undefined, so we must either define it as a method or variable.
# 5. Why did the interpreter give you this error?
# => Because it's confused about what 'south_park' is

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# => Line 51
# 2. What is the type of error message?
# => It in '<main>' again, undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => It's telling us that 'cartman' is undefined method
# 4. Where is the error in the code?
# => There is nothing that defines cartman, which is being experessed as a method, because of the ()
# 5. Why did the interpreter give you this error?
# => It is looking for a method called 'cartman' but cannot find it

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
# => Line 71
# 2. What is the type of error message?
# => It's telling us it's argument error in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# => It is telling us that the number of arguments (in the parens) is 1 when it should be 0.
# 4. Where is the error in the code?
# => We cannot have 'I hate Kyle' in the parens, because cartmans_phrase doesn't take arguments by its definition.
# 5. Why did the interpreter give you this error?
# => Because the argument does not take arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("You suck!")

# 1. What is the line number where the error occurs?
# => Line 87 / Line 90
# 2. What is the type of error message?
# => Argument error either in <main> where is expressed or in defining the method
# 3. What additional information does the interpreter provide about this type of error?
# => We are entering 0 arguments for a method that requires 1 argument.
# 4. Where is the error in the code?
# => In this case, it looks like the intent was to put an argument in the phrase, rather than define the method without parameters.
# 5. Why did the interpreter give you this error?
# => Because we did not specify an argument for the method, cartman_says



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Kyle')

# 1. What is the line number where the error occurs?
# => Line 107 / Line 111
# 2. What is the type of error message?
# => Another argument error
# 3. What additional information does the interpreter provide about this type of error?
# => We gave 1 argument when 2 are required
# 4. Where is the error in the code?
# => We should put another argument in cartmans_lie.
# 5. Why did the interpreter give you this error?
# => Because it was expecting a second argument. We can use 'Kyle' as the name.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => Line 126
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => That a string cannot be coerced into a FixNum
# 4. Where is the error in the code?
# => We can't multiple 5 by a string, so probably need to reverse it
# 5. Why did the interpreter give you this error?
# => Ruby (or math lol) cannot multiply strings

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# => Line 141
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => We can't divide by zero
# 4. Where is the error in the code?
# => Where we put the 0 in the denominator
# 5. Why did the interpreter give you this error?
# => Because in math we can't divide by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 157
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => It cannot load the file that's required, with the file path of the file its attempting to load
# 4. Where is the error in the code?
# => The filepath is invalid / the file is invalid, so we need to put in a valid file
# 5. Why did the interpreter give you this error?
# => Because it cannot load files that don't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


#Which error was the most difficult to read?
# => I think the toughest ones were the ones where it could've been two potential areas. Or when the incomplete method sent us to the end of the file.
#How did you figure out what the issue with the error was?
# => By reading the method and the error message, we could tell that there was no end expected.
#Were you able to determine why each error message happened based on the code? 
# => Yup, looking at the code and what we've learned so far, it was pretty clear what was wrong on each.
#When you encounter errors in your future code, what process will you follow to help you debug?
# => I'll make sure to examine the message to see what's going on according to Ruby, and then look for that line of code and start debugging similar to what we did here. 