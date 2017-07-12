#Create interface to ask for a name
puts "What's your full name? Split your first name and last name with a space"

#Create a name variable
name = gets.chomp

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


#Take a spy's name and turn a name
name = "marenz"
vowels = "aeiou"

new_name = ""

#Is the letter a vowel or consonant
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

name.each_char do |letter|
  if vowels.include? letter
    new_name += nextLetter(vowels, letter)
  elsif consonants.include? letter
    new_name += nextLetter(consonants, letter)
  endc
end
puts new_name

