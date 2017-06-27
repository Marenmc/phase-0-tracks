##Write methods to encrypt and decrypt passwords:

# METHOD TO ENCRYPT A PASSWORD
def encrypt(secret_password)
# Create a character index
 index = 0
# Create an empty string to have a return value
 encrypted_string = ""
# Loop until you get to the last letter in the password
 while index < secret_password.length do
  encrypted_string += secret_password[index].next
# Call the index  plus 1
  index += 1
 end
 #return the implicit empty response at the end
  encrypted_string
# end encryption method
end

# ASK FOR PASSWORD FROM USER AND ENCRYPT IT
puts "What is your password?"
  secret_password = gets.chomp
puts encrypt(secret_password)

# METHOD TO DECRYPT A PASSWORD
def decrypt(encrypted_password)
index = 0
# List the entire alphabet in order to match the letters of the decrypted password to their correct index
alphabet = "abcdefghijklmnopqrstuvwxyz"
# Prepare an empty string to store results
decrypted_string = ""
# Create a loop to iterate over the encrypted password
while index < encrypted_password.length do
  decrypted_index = alphabet.index(encrypted_password[index])
  decrypted_string+= alphabet[decrypted_index -1]
    index += 1
end
#return the implicit empty response at the end
  decrypted_string
end


# DECRYPT PASSWORD
puts "What is your encrypted password?"
  encrypted_password = gets.chomp
puts decrypt(encrypted_password)