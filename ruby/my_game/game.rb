#Create a game where one user enters a word and another user attempts to guess it

#Initialize it to start the game
#Ask user 1 for the word they want to use
#Ask user 2 to guess the word
#Translate the number of the guess to a state
#Check if the word that user 2 entered is correct
#If user 2 does not get it right, give them feedback telling them that they did not get the right word and give them a hint. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
#Allow user 2 to continue to guess while number of guesses is less than word length is less than
#Break the loop if the user gets it right
#Give the user should get a congratulatory message if they win, and a taunting message if they lose.

class WordGame
  attr_reader :is_over, :word, :guess_count
  attr_accessor :word_guess;

  def initialize
    @guess_count = 0
    @is_over = false
  end

  def ask_for_word
    puts "Welcome to your word game."
    puts "User 1, enter a word"
    @word = gets.chomp
    index = 0
  end

  def ask_for_guess
    puts "Great. Now User 2, type your guess here"
    @word_guess = gets.chomp
  end

  def check_word
    @guess_count += 1
    if @word == @word_guess
      @is_over = true
      puts "yay - you got it right"
    else puts "Nope. Guess again."
      @word_guess = gets.chomp
    end
  end

end

game1 = WordGame.new
game1.ask_for_word
game1.ask_for_guess
game1.check_word

while game1.guess_count < game1.word.length
  game1.ask_for_guess
  game1.check_word
end