# Numbers and Letters in Ruby

Puts - Returns 'nil' and prints the output (of whatever we wrote in our program) to the console with a new line. 


**Number Types**
Integer - A whole number.
Float - Any number (with decimals)

A key distinction here is division.

--With integers, if we do 9 / 2 --> Ruby will return 4, which is the number of times a *full* 2 can fit into 9, because if we try and fit another 2 into 9, it won't work, since we'll reach 10. That is, we can do rounded math, where the remainder is smaller than the number in our denominator. 

--With floats, it will tell allow us to break the 2 into pieces, we can fit 4 whole 2's into 9, but also a half 2 (1) additionally. Aka, we can do regular math. 

**Challenges from Pine's book - 2.5**

Hours in a Year (which is 24 hours per day * 365 days per year)

```ruby
puts 24 * 365
```

Minutes in a decade without leap years (which is 60 minutes per hour * 24 hours per day * 365 days per year * 10 years per decade)

```ruby
puts 60 * 24 * 365 * 10
```

***Challenges from DBC***

[4.2.1 - Defining Variables](Link)
[4.2.2 - Simple String Methods](Link)
[4.2.3 - Local Variables and Basic Arithmetical Operations](Link)

# Reflection

In your nums-letters.md file, answer the following questions:

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
What is the difference between integers and floats?
What is the difference between integer and float division?
What are strings? Why and when would you use them?
What are local variables? Why and when would you use them?
How was this challenge? Did you get a good review of some of the basics?