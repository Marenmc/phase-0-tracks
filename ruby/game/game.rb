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
game1.check_word.each do
  check_word

while game1.guess_count < game1.word.length
  game1.ask_for_guess
  game1.check_word
end







