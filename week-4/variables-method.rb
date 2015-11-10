# Name greeting program

puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name'
last_name = gets.chomp
puts 'Hello, my name is ' + first_name + ' ' + middle_name + ' ' + last_name + '!' 

# Bigger, better number program

puts 'What is your favorite integer?'
bigger_number = gets.chomp.to_i + 1

puts 'But isn\'t ' + bigger_number.to_s + ' a bigger and better number?' 

=begin

# DBC Exercises and Reflection

4.3.1 Return a Formatted Address:  https://github.com/dma315/phase-0/blob/master/week-4/address/my_solution.rb
4.3.2 Defining Math Methods:  https://github.com/dma315/phase-0/blob/master/week-4/math/my_solution.rb

Reflection

How do you define a local variable?

	We use var_name = [input] -- where [input] can be of any data type 

How do you define a method?

	We use 'def var_name(inputs, if, relevant)'
	Followed by what needs to happen in the method
	Then we close the method with 'end'

What is the difference between a local variable and a method?
	
	A local variable is single variable that we can call, its a piece of stored information.
	Whereas a method is a stored "process", something that executes repeatable steps.

How do you run a ruby program from the command line?

	We type 'ruby [filename.rb]' to execute a Ruby file.

How do you run an RSpec file from the command line?

	We type 'rspec [specfilename.rb]' to run the spec file.

What was confusing about this material? What made sense?

	The example for using rspec made it seem like the file extension for spec files was .spec
	Whereas all of the examples are .rb.
	Is that a typo?
	
=end