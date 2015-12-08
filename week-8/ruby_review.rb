# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent 1.5 hours on this challenge.

# Pseudocode





# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer

  def initialize(array)
    @board = array
    @bingo = ['x','x','x','x','x']
  end
  
  def checkBingo
    r_to_l = []
    @board.each_with_index {|a,i| r_to_l << a[i] if a[i] == 'x'}
    l_to_r = []
    @board.reverse.each_with_index {|a,i| l_to_r << a[i] if a[i] == 'x'}
    
    if @board.select {|i| i == @bingo}.length > 0
      p "Horizontal Bingo!"
    elsif @board.transpose.select {|i| i == @bingo}.length > 0
      p "Vertical Bingo"
    elsif r_to_l == @bingo
      p "Right to Left Diagonal Bingo!"
    elsif l_to_r == @bingo
      p "Left to Right Diagonal Bingo!"
    else 
      p "No Bingo"
    end
  end

end


# Refactored Solution 


# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

BingoScorer.new(horizontal).checkBingo
BingoScorer.new(vertical).checkBingo
BingoScorer.new(right_to_left).checkBingo
BingoScorer.new(left_to_right).checkBingo


# Reflection

# What concepts did you review or learn in this challenge?
# => Refresher on Ruby syntax, forgot a bunch of it after literally one week of JS :(

# What is still confusing to you about Ruby?
# => When / why we need classes. Like in this case, why do we need a class?
# => Is this just good practice for always making classes when we need to separate out code?

# What are you going to study to get more prepared for Phase 1?
# => Why we need classes for these types of exercises!
# => Syntax...need to make sure this stuff writes to memory...
# => I think I also need to write quick solutions quicker instead of just trying to write perfect concise solutions immediately