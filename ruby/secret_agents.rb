# DEFINE THE METHOD TO ENCRYPT A PASSWORD
def encrypt
# Identify index of the first letter in the password
index = 0
encrypted_string = ""
# Loop until you get to the last letter in the password
while index < secret_password.length
encrypted_string+= secret_password[index].next
# Call the index  plus 1
index += 1
# end encryption method
end

#Take array of encrypted password letter and string it together
puts encrypted_string




# DEFINE METHOD TO DECRYPT A PASSWORD
def decrypt
# Identify the letter of the first character in the decrypted password
index = 0
# List the entire alphabet in order to match the letters of the decrypted password to their correct index
alphabet = "abcdefghijklmnopqrstuvwxyz"
# Prepare an empty string to store results
decrypted_string = ""
# Create a loop to iterate over the encrypted password
while index < decrypted.length do
  alphabet.index(decrypted[index])
  decrypted_index = alphabet.index(decrypted[index])
  decrypted_string+= alphabet[decrypted_index -1]
    index += 1
end
# Display decrypted password
  puts decrypted_string

end

encrypt
decrypt

# Ask the user to enter their password
puts "Enter your password"
# Make the password the variable
secret_password = gets.chomp
puts "Here, let us encrypt your password"
encrypt("abc")
decrypt(encrypt("swordfish"))

puts "Yay. Go you. Whoo password security."







