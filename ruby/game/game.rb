#### THOUGHTS

# Make a method to take in word
  # initialize the class with it

# Guess limit
  # Initialize the guess limit, 2x the length of the word

# Player guesses a Letter
  # Repeated guesses don't count
  # Initialize an array to store guesses
  # Add 1 to counter

# Display word
  # Blank out the letter with _ fill in letter that have been guessed

# End Game
  # Check if game is over
    # IF WON - win message
    # ELSE - Lose message
  # initialize a game_over boolean

# Take user input to guess the word - USER INPUT
  # Take a single letter for a guess
  # Leave it outside class for the time being

#### PSEUDOCODE

# guess_letter
# INPUT: A letter as a string
# OUTPUT: Adds new letter to guessed_letters and +1 to counter
  # IF letter is NOT already guessed (if !guessed_letters.include?(letter))
    # Add letter to guessed_letters
    # Increase the counter
    # run the method to display the "game board"
  # ELSE
    # Put that the letter was already guessed

# display_board
# INPUT: game
# OUTPUT: current state of the game
  # just print the current state of the game
    # An array, using "_" for each non-guessed element
    # Letters replace "_" when they have been gussed
      # Another method to replace the letter

# replace_letter
# INPUT: letter
# OUTPUT: Letter replaces the "_" in the board

#### CODE
#What are the different pieces of data we need to keep track of throughout the game; what are the things in my head that we need a computer to keep track of
class Game
  def initialize(word)
    @answer = word
    @counter_limit = @answer.length * 2
    @counter = 0
    @guessed_letters = []
    @game_over = false
    @board = Array.new(@answer.length, "_")
  end

  def check_letter(letter)
    if @guessed_letters.include?(letter)
      p "That letter was already guessed, please guess again."
    else
      @guessed_letters << letter
      @counter += 1
        replace_letter(letter)
      display_board
    end
  end

  def display_board
    p @board.join(" ")
  end

  def replace_letter(letter)
    #only call this if the letter is the gets chomp. Then replace that dash with the correct letter in the same index
    p answer_array = @answer.split("")
    # Iterating through each index in the array
    answer_array.each_index do |i|
    # If a given index number in the array equals the letter that was guessed, then print it. Otherwise, don't.
      if answer_array[i] == letter
        @board[i] = letter
      end
    end
  end

  def end_game

  end
end

p "Please enter a hidden word:"
word = gets.chomp
game = Game.new(word)
game.display_board
# 5.times do
  p "Please guess a letter:"
  guess = gets.chomp!
  game.check_letter(guess)
# end




