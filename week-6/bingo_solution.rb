# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
# => 1) Define an initialization that starts a game using an input of 'board' and rejects inputs where the array is an invalid size
# => 2) Define a method that 'call' randomly generates a letter and number between 1 and 100
# => 3) Define a method that 'checks' whether the called number exists and replaces the element on the board with an 'X'
# => 4) Define a method displays a column of the board based on the letter
# => 5) Define a method that displays the entire board

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # => 1) Create an array with all letters, pick randomly from the array
  # => 2) Concatenate that letter with a random number 1-100 

# Check the called column for the number called.
  # => 1) Define a method that takes an input string
  # => 2) Start by 'navigating' to the column, likely by matching each letter to a column
  # => 3) See if the number exists in the column

# If the number is in the column, replace with an 'x'
  # => 1) Check if a number exists and return its position in the array within the array
  # => 2) If it does, replace with an 'X'

# Display a column to the console
  # => 1) Print a given column out for a given letter

# Display the board to the console (prettily)
  # => 2) Display the entire board prettily -- I think best way is to do it in separate lines, likely as elements of the string

# Initial Solution

=begin

class BingoBoard

  attr_accessor(:bingo_board, :column_hash)

  def initialize(board)
    @bingo_board = board
    @column_hash = {'B'=>0,'I'=>1,'N'=>2,'G'=>3,'O'=>4}
    if board.length != 5 || board.select {|i| i.length != 5}.length != 0
      raise ArgumentError.new('Board is not a 5x5 array')
    end
  end

  def call
    p @column_hash.keys[rand(5)].dup << (rand(100) + 1).to_s
  end
  
  def check(string)
    # Set some local variables we will use later
    original_value = string.dup
    column_value = @column_hash[string[0]] # Index of column to check
    string.slice!(0) # Delete first letter in string
    value = string.to_i # Number to check
    array_to_check = [] # Empty array to store column into (transposed)
    
    # Create an array of just the column we are looking in
    @bingo_board.each do |row|
      array_to_check << row[column_value]
    end
    
    # Replace with X if it's a match
    @bingo_board[array_to_check.index(value)][column_value] = 'X' if array_to_check.index(value)
    
    # Give user some input that it's a match!
    p "Match to #{original_value}!" if array_to_check.index(value)
  end

  def show_board
    puts "B    I    N    G    O"
    @bingo_board.each { |row|
      puts row.map {
        |element| element.to_s.ljust(4) # Spaced it out and left aligned to make it look nice
        }.join(" ")
      }
  end
  
end

=end

# Refactored Solution

class BingoBoard

  attr_accessor(:bingo_board, :column_hash, :letter_call, :number_call)

  def initialize(board)
    @bingo_board = board
    @column_hash = {'B'=>0,'I'=>1,'N'=>2,'G'=>3,'O'=>4}
    if board.length != 5 || board.select {|i| i.length != 5}.length != 0
      raise ArgumentError.new('Board is not a 5x5 array')
    end
  end

  def call
    @letter_call = @column_hash.keys[rand(5)]
    @number_call = rand(100) + 1
    p @last_call = @letter_call.dup << @number_call.to_s
  end
  
  def check
    column_value = @column_hash.keys.index(@letter_call)
    array_to_check = [] # Empty array to store column into (transposed)
    
    # Create an array of just the column we are looking in
    @bingo_board.each do |row|
      array_to_check << row[column_value]
    end
    
    # Replace with X if it's a match
    @bingo_board[array_to_check.index(@number_call)][column_value] = 'X' if array_to_check.index(@number_call)
    
    # Give user some input that it's a match!
    p "Match to #{@last_call}!" if array_to_check.index(@number_call)
  end

  def show_board
    puts "B    I    N    G    O"
    @bingo_board.each { |row|
      puts row.map {
        |element| element.to_s.ljust(4) # Spaced it out and left aligned to make it look nice
        }.join(" ")
      }
  end
  
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
100.times {
  new_game.call
  new_game.check
}
new_game.show_board


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => Not too bad in my opinion, I think I just needed to make sure I had all of the components

# What are the benefits of using a class for this challenge?
# => I think the benefits are that we are separating out this game with its own rules and its own attributes.
# => Other than that, I'm not entirely sure why we needed to create its own class. 
# => This probably wouldn't have been too bad as a bunch of loose methods, but it would've felt less organized?

# How can you access coordinates in a nested array?
# => We can continue to string together the [] method to go layers and layers deeper.

# What methods did you use to access and modify the array?
# => I just did some iterations over the array and directly modified the array, nothing too fancy I don't think.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# => I hadn't used .dup before which was nice when helping to make sure we weren't being destructive to variables that should not change.
# => I don't feel like we needed any fancy methods here, I think the challenge was in the thinking and making sure we were doing the nesting correctly. 

# How did you determine what should be an instance variable versus a local variable?
# => I didn't feel like we needed many instance variables here. 
# => I felt like it was only necessary for initializing the hash, but could've been used elsewhere depending on how we set up our methods.

# What do you feel is most improved in your refactored solution?
# => I think my original was trying to much to feed arguments into call
# => With the refactored version, .check only checks the last call (which I think makes sense)
# => This made it less tedious to split out the string and saved some local variable space
# => And allowed me to make better use of instance variables