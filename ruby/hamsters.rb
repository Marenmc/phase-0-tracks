#Program for incoming hamsters

# Animal Name
puts "What's the animal name?"
  name = gets.chomp

# Animal volume level
puts "What is the Hamsters Volume Level from 1 to 10?"
  volume_level = gets.chomp.to_i

# Animal fur color
puts "What is the animal fur color?"
  fur_color = gets.chomp

# Good candidate for adoption?
puts "Is the animal a good candidate for adoption?"
  candidate = gets.chomp
    if candidate == "y"
      good_for_adoption = true
    else good_for_adoption = false
end

# Estimated age?
puts "Estimated hamster age?"
 estimated_age = gets.chomp.to_i


# adoption message

if good_for_adoption == true
  puts "Way to go. Ready for adoption =)"
else
  puts "Not good for adoption, yet =("
end

# Hamster summary
puts "#{name}'s File"
puts "#{name}'s estimated age: #{estimated_age}"
puts "#{name}'s volume level: #{volume_level}"
puts "#{name}'s fur color: #{fur_color}"
puts "Is #{name} a good candidate for adoption? #{candidate}"



