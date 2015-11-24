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
    column_value = @column_hash[string[0]] # Index of column to check
    string.slice!(0) # Delete first letter in string
    p value = string.to_i # Number to check
    array_to_check = [] # Empty array to store column into (transposed
    @bingo_board.each do |row|
      array_to_check << row[column_value]
    end
    @bingo_board[column_value][array_to_check.index(value)] = 'X'
  end

  def show_board
    p "B  I  N  G  O"
    @bingo_board.each { |row|
      p row.each {
        |element| element.to_s.ljust(4)
        }.join(" ")
      }
  end
  
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check("N97")
new_game.show_board


#Reflection

