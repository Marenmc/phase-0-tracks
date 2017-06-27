#Method 1 - translate_char is the parameter, char is the argument. Translates characters based on the specified characteristics
def translate_char(char)
 alphabet = "abcdefghijklmnopqrstuvwxyz"
 halfway = alphabet.length / 2
 is_capitalized = (char.upcase == char)

 if alphabet.index(char.downcase) == nil
   "boing"
 elsif is_capitalized && alphabet.index(char.downcase) < halfway
 char
 end
end

#Method 2 - translate_phrase is the parameter, phrase is the argument
def translate_phrase(phrase)
#Create a character index; index identifies the character spot in the given string by number. Specifyng char_index = 0 starts the index at 0.
 char_index = 0
#translate output into an empty string
  translated_response = ""
#loop - while the number of the character in the index is less than the total number of characters in the string,
 while char_index < phrase.length
# translate the response by translating each character in the phrase via it's character index
   translated_response << translate_char(phrase[char_index])
# loop through each incremental next character in the string
   char_index += 1
  end
#return the empty response at the end
  translated_response
end

#Call the method; don't have to print it because it's already in the method.
translate_phrase("Happy Halloween!")


