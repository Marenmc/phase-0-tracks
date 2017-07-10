#Create interface to ask for a name
puts "What's your full name?"

#Create a name variable
full_name = gets.chomp

puts "Here is your name reversed"
#Split the first name and last name
#Reverse the first and last name
#Create a new variable with the reversed name
reversed_name = full_name.split.reverse.join('')
p revesed_name

puts "and the letters split into an array"
#Make a new string with the characters in the reversed name
name_letters = reversed_name.split(//)
p name_letters


#Create a method that iterates through the letters in the name_letters string.
#If there is a vowel, change that vowel to vowel.next
def character_translator(char)
  vowels = "aeiou"
  if char == "a"
    "leep"
  else
    " "
  end
  char
end

def vowel_translator(full_name)
  char_index = 0
  translated_name = ""
  while char_index < full_name.length
   translated_name << character_translator(full_name[char_index])
   char_index += 1
  end
 translated_name << ""
end

puts vowel_translator("Maren McMullan")
puts character_translator("Maren McMullan")


fake_name_data {
  :name => (full_name)
 # :translated_name => (translated_name)
}

p fake_name_data



#scratch pad below...

# def vowel_switch(name_letters, vowels)
#   #Keep iterating as long as the index number in the string is less than the length of the string
#   while index < name_letters.length
#   #If the letter is not a vowel, return the same letter
#   #If the letter IS a vowel, return the vowel.next
#   return index
#     if name_letters.char == vowels
#       puts vowels.next
#     else puts " "
#   end
# end
# end




#   :consonants = "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"
# }


