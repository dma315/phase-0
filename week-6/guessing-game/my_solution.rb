# Build a simple guessing game


# I worked on this challenge by myself
# I spent 0.5 hours on this challenge.

# Pseudocode

# Input:  Be able to create a new game, guess, and check whether the game has been solved via 3 separate methods
# Output: A non error when the game is created, return a directional hint for each guess, and boolean on whether the game is solved
# Steps: Define an initialization; define a .guess method, and define a .solved? method


# Initial Solution

=begin
class GuessingGame
  
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer then p :high
    elsif guess < @answer then p :low
    else p :correct
    end
  end
  
  def solved?
    @solved = if @guess == @answer then true
    	else false
    	end
    p @solved
  end

end

game = GuessingGame.new(10)

game.guess(5)
game.solved?
game.guess(20)
game.solved?
game.guess(10)
game.solved?

=end

# Refactored Solution

class GuessingGame
  
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer then p :high
      elsif guess < @answer then p :low
      else p :correct
    end
  end
  
  def solved?
    @solved = (@guess == @answer ? true : false)
  end

end

game = GuessingGame.new(10)

game.guess(5)
game.solved?
game.guess(20)
game.solved?
game.guess(10)
game.solved?


# Reflection


# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# => Instance variables I think represent characteristics of real world object in the sense that they are like a definition of an attribute
# => We can retrieve them whenever we want and paint them whenever we want
# => e.g. if I'm making a class called house, and I define the @paint_color of my house as "blue", I can always reference the paint color and it will be blue
# => ..unless I paint it a different color. It's very much like English, where words "mean" something.
# => Same goes for the methods, I can define a method "list" for houses, and perhaps what it will do is put it out on the market place.
# => And then the definition will apply to all houses and it will always do the same thing.
# => It's a nice way of saving a common terminology I think.

# When should you use instance variables? What do they do for you?
# => I think the best time to use instance variables are when defining attributes for a given class.
# => It creates a common language by which we describe all things in that class, and we can retrieve that information on all objects in that class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => With flow control, we just need to think through all of the scenarios, didn't think it was particularly challenging.
# => I like the refresher on the ternary operator here, it was nice to make the code simpler.
# => I think the explanation here is that we just need to set up the right conditional statements (if) that handle all possibilities of guesses here.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => I think in this case, returning symbols adds a nice aesthetic here.
# => It sounds like mutability is a key reason to use symbols here, although I don't quite understand why high, low, and correct need to be symbols.
# => Perhaps, there could be other strings for "high", "low", and "correct" that we might use in other scenarios that would make this confusing?