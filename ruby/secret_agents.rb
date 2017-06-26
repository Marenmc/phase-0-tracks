# Define a method to encrypt a PASSWORD
# Define a method to decrypt a PASSWORD
# Ask for input_1
# Provide output_1
# Ask for input_2
# Provide output_2

# METHOD TO ENCRYPT A PASSWORD
def encrypt
# Identify index of the first letter in the password
secret_password = "secret_password"
index = 0
encrypted_string = ""
# Loop until you get to the last letter in the
while index < secret_password.length do
encrypted_string+= secret_password[index].next
# Call the index  plus 1
index += 1
end
# end encryption method
end

# METHOD TO DECRYPT A PASSWORD
def decrypt
# Identify the letter of the first character in the decrypted password
decrypted = "decrypted"
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

end

# Ask for, encrypt, and print original pasmmsword
puts "What is your password?"
  secret_password = gets.chomp
puts "Here is your encrypted password"
#Take array of encrypted password letter and string it together
puts encrypt

# Ask for, decrypt, and print decrypted password
puts "What is your decrypted password?"
  decrypted = gets.chomp
# Display decrypted password
  puts decrypt
