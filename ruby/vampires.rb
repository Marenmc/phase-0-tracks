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
  puts "Good math"
  else
    age = false
    puts "Bad math"
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
    allergies = gets.chomp
   until allergies == "sunshine" do
      puts "Do you have any other allergies?"
      allergies = gets.chomp
      allergies = true
     else
       allergies = false
   end
      break if allergies == "done"
    if allergies == "sunshine"
       puts "VAMPIRE ALERT!!!"
    break if allergies == "done"
        end
   end
 end