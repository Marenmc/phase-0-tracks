#Program to ensure new employees are not vampires
## loop

puts "How many employees will be processed at this time?"
process_times = gets.chomp.to_i

until process_times == 0
  puts "Next employee"
  process_times -= 1


puts "What is your name?"
  name = gets.chomp

puts "How old are you?"
  stated_age = gets.chomp.to_i

puts "What year were you born?"
   year_born = gets.chomp.to_i
    age = 2017 - year_born

if age == stated_age
  age = true
  else
  age = false
  end

puts "Our company cafeteria serves garlic bread. Can I get you some?"
      garlic_bread = gets.chomp
      if garlic_bread == "y"
      garlic_bread = true
        else
      garlic_bread = false
    end

  puts "Would you like to enroll in the company's health insurance?"
      health_insurance = gets.chomp
      if health_insurance == "y"
        health_insurance = true
        else
        health_insurance = false
      end

puts "Name any allergies you might have and type 'done' when finished."
  loop do
      allergy = gets.chomp
      if allergy == "sunshine"
        puts "Probably a vampire!"
        break
      elsif allergy == "done"
        break
      else
        #ask another
        puts "Do you have any other allergies?"
      end
    end
  end

  ## Answer to spit out ##
  #Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
   if (name == "Drake Cula" || name == "Tu Fang")
      puts "Definitely a vampire"

  #If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
   elsif age && (garlic_bread || health_insurance)
       puts "Probably not a vampire"

  #If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
   elsif !age && !(garlic_bread || health_insurance)
       puts "Probably a vampire"

  #If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
      elsif !(age || garlic_bread) and !health_insurance
    puts "Almost certainly a vampire"

      else
      puts "Result Inconclusive"

end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends!"