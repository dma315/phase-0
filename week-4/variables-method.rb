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

4.3.1 Return a Formatted Address:  
4.3.2 Defining Math Methods

Reflection

How do you define a local variable?

How do you define a method?

What is the difference between a local variable and a method?

How do you run a ruby program from the command line?

How do you run an RSpec file from the command line?

What was confusing about this material? What made sense?
	
=end