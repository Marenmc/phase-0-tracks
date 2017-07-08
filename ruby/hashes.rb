#Program asks designer for client name, age, number of children, decor theme, budget, like Chip and Joanna?,

#Prompt the designer/user for client information.
puts "Client name?"
 client_name = gets.chomp
puts "Client age?"
 client_age = gets.chomp.to_i
puts "Number of children?"
 number_of_children = gets.chomp.to_i
puts "Decor theme?"
 decor_theme = gets.chomp
puts "Budget?"
 budget = gets.chomp.to_i
puts "Do you like Chip and Joanna? (y/n)"
 like_chip_and_joanna = gets.chomp
#Add if statement for y/n boolean question
 if like_chip_and_joanna == "y"
  like_chip_and_joanna = true
 else
  like_chip_and_joanna = false
 end

puts "Here is the information we have so far."

#Program adds application data to hash
application = {
  :name => (client_name),
  :age => (client_age),
  :number_of_children => (number_of_children),
  :decor_theme => (decor_theme),
  :budget => (budget),
  :fans => (like_chip_and_joanna)
}

#Print hash
puts application

#Ask user if they have any updates


puts "Do you want to update any of the information you provided? If so, type the key you want to update. Otherwise, type done."
  key_to_update = gets.chomp

 if key_to_update == "done"
    puts "Cool beans."

 elsif key_to_update == "name"
    puts "Update your name"
    updated_client_name = gets.chomp
    application [:name] = updated_client_name

  elsif key_to_update == "age"
    puts "Update your age"
    updated_age = gets.chomp.to_i
    application [:age] = updated_age

  elsif key_to_update == "children"
    puts "Update your number of children"
    updated_number_of_children = gets.chomp
    application [:number_of_children] = updated_number_of_children

  elsif key_to_update == "decor theme"
    puts "Update your decor theme"
    updated_decor_theme = gets.chomp
    application [:decor_theme] = updated_decor_theme

  elsif key_to_update == "budget"
    puts "Update your budget"
    updated_budget = gets.chomp.to_i
    application [:budget] = updated_budget

  elsif key_to_update == "fans"
   puts "Update your preferences about Chip and Joanna. Are you a fan? (y/n)"
   updated_like_chip_and_joanna = gets.chomp
    if updated_like_chip_and_joanna == "y"
      updated_like_chip_and_joanna = true
    else
      updated_like_chip_and_joanna = false
    end
    application [:fans] = updated_like_chip_and_joanna

  else
    p  "whoops. We'll take your original info!"

end

puts "This is your application. "
puts application

puts "Thanks for submitting your application. Someone will be in touch with you shortly."





