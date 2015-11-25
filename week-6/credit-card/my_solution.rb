# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number representing a credit card
# Output: true or false (indicating a valid ccd or not)
# Steps:

# 1. Initialize CreditCard Class
# a.  Accepts a number as an argument
# b.  Raise ArgumentError if the number is not 16 digits long
# 2. Define check_card method (which will return a boolean)
#      a. Double every other digit, starting with second to last and working backwards
#      b. Sum up all the digits (breaking down double digits into sums of the two: 20 = 2 + 0)
#      c. If this sum is divisible by 10, return true.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
  
#   def initialize(number)
#     @cardnum = number
#     raise ArgumentError.new('Not a valid input, must be 16 digits') if number.to_s.length != 16
#   end
  
#   def check_card
#     cardnum_array = @cardnum.to_s.split("")
#     cardnum_array.each_with_index { |v, i|
#       i % 2 == 0 ? cardnum_array[i] = v.to_i * 2 : cardnum_array[i] = v.to_i
#       }
#     cardnum_array = cardnum_array.join("").split("").map {|i| i.to_i}
#     luhn = cardnum_array.inject { | sum, num| sum + num }
#     p luhn % 10 == 0  
#   end
  
# end

# card1 = 8888888888888888
# card2 = 12341234123412345

# CreditCard.new(card1).check_card


# Refactored Solution


class CreditCard
  
  def initialize(number)
    @cardnum = number
    raise ArgumentError.new('Not a valid input, must be 16 digits') if number.to_s.length != 16
  end
  
  def check_card
    cardnum_array = @cardnum.to_s.split("")
    cardnum_array.each_with_index { |v, i| i % 2 == 0 ? cardnum_array[i] = v.to_i * 2 : cardnum_array[i] = v.to_i}
    luhn = cardnum_array.join("").split("").map {|i| i.to_i}.inject(:+)
    p luhn % 10 == 0  
  end
  
end


card1 = 8888888888888888
card2 = 12341234123412345

CreditCard.new(card1).check_card


# Reflection

# What was the most difficult part of this challenge for you and your pair?
# => We had some fun trying to figure out how to use .each_with_index, but it wasn't difficult per se.
# => Think this challenge was relatively straightforward once we broke it into steps

# What new methods did you find to help you when you refactored?
# => We actually probably went a little method crazy in our initial solution, so didn't use any new ones, but tried to make it a bit more concise.
# => We probably strung a little too many methods together, but they are in broken out steps!

# What concepts or learnings were you able to solidify in this challenge?
# => How to iterate selectively through an array
# => And how to work with strings / nums
# => I do feel like we didn't necessarily need a class for this challenge though. 