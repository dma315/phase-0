# Numbers and Letters in Ruby

Puts - Returns 'nil' and prints the output (of whatever we wrote in our program) to the console with a new line. 


**Number Types**

Integer - A whole number.  
Float - Any number (with decimals)  
*A key distinction here is division.*

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

[4.2.1 - Defining Variables](https://github.com/dma315/phase-0/blob/master/week-4/defining-variables.rb)  

[4.2.2 - Simple String Methods](https://github.com/dma315/phase-0/blob/master/week-4/simple-string.rb)  

[4.2.3 - Local Variables and Basic Arithmetical Operations](https://github.com/dma315/phase-0/blob/master/week-4/basic-math.rb)

# Reflection



**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Ruby handles these like we would expect them to, they do the math. For addition, subtraction, and multiplication -- if we are doing math with integers, the result will be an integer (because math) and if they are decimals (floats in Ruby), Ruby will recognize them that way and return the answer with the appropriate decimals.  

The only weird one is division, where integer division can be potentially a float, so we need to specify those numbers as floats (by converting with .to_f), or if we are okay with integer division (the rounded down integer), then we can skip the conversion.

**What is the difference between integers and floats?**

Integers are whole numbers.
Floats represent any number that isn't an integer.

**What is the difference between integer and float division?**

See above for explanation.

**What are strings? Why and when would you use them?**

Strings are essentially text, where it can be any character.

**What are local variables? Why and when would you use them?**

Local variables are variables that we can define, that essentially are stored information we've named and that we can call over and over again.

**How was this challenge? Did you get a good review of some of the basics?**

Yup, I thought this was pretty straightforward. Good to get some review, since I definitely forgot some of the Ruby stuff we did pre-interview. 

