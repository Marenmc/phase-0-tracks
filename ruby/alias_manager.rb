#Create interface to ask for a name
puts "What's your full name? Split your first name and last name with a space"
name = gets.chomp!

puts "Here is your name reversed"
reversed_name = name.split.reverse.join('')
p reversed_name

puts "and the letters split into an array"
#Make a new string with the characters in the reversed name
name_letters = reversed_name.split(//)
p name_letters

new_name = ""

#Is the letter a vowel or consonant
vowels = "aeiou"
consonants = ("a".."z").to_a
consonants.delete_if{ |letter| vowels.include? letter}

def nextLetter(letters, letter)
  letterIndex = letters.index(letter)
  if letterIndex == letters.length-1
    letterIndex = 0
  else
    letterIndex = letterIndex+1
  end
  letters[letterIndex]
end

reversed_name.each_char do |letter|
  if vowels.include? letter
    new_name += nextLetter(vowels, letter)
  elsif consonants.include? letter
    new_name += nextLetter(consonants, letter)
  end
end
puts new_name

