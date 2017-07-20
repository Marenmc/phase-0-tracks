#Robot Translator
# Letter is in the first half of the alphabet it becomes Bloop
# Letter is capitalized or the letter e, it becomes Buzz
#Not a letter at all, it becomes Boing
#Otherwise, it becomes Beep

#Create one method that translates the word - add a bunch of conditionals
#Also create a RSpec to run with the robot translator

#Method to translate the word into a string
def translate_phrase(phrase)
  char_index = 0
  while char_index < phrase.length
    puts phrase[char_index]
    char_index += 1
  end
end

translate_phrase("Merry Christmas")

# #Method to translate the string into the new string with all of the weird sounds
# def translate_letters(string)
#   index = 0
#   alphabet
#   first_half =
#   if alphabet[0..15]
#     puts "Bloop"
#   elsif
#   end
# end


