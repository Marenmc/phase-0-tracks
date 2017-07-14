#Create a santa class
class Santa

   #Initialize new santa
   def initialize(gender, ethnicity)
    puts "Initializing Santa instance"
      @gender = gender
      @ethnicity = ethnicity
    puts "I am a #{ethnicity} #{gender}"
   end

   #Make Santa speak
   def speak
     puts "Ho, ho, ho! Happy Holidays!"
   end

   #Make Santa each different cookies
   def eat_milk_and_cookies(cookie_type)
     puts "That was a good #{cookie_type} cookie!"
   end

   #Santa's reindeer preferences
   def reindeer_preference
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
   end

   def santa_age
    @age = 0
    puts "Santa is #{@age}"
   end

   def celebrate_birthday
    @age += 1
    puts "Santa just had a birthday. Now he is #{@age}."
   end

  def get_mad_at(reindeer_name)
    @reindeer_name = reindeer_name
    @reindeer_ranking.delete(@reindeer_name)
    @reindeer_ranking.push(@reindeer_name)
    puts "Wow. Santa is really mad at #{@reindeer_name}"
    p @reindeer_ranking
  end

  def gender=(new_gender)
     @gender = new_gender
     puts "Santa just had gender reassignment surgery. Now he is #{@gender}"
  end

  def ethnicity
    @ethnicity
    puts "Santa is #{@ethnicity}"
  end

  def age
    @age
    puts "In case you forgot, Santa is #{@age}"
  end
end


santa = Santa.new("female", "afro-cuban")
santa.speak
santa.eat_milk_and_cookies("chocolate chip")
p santa.reindeer_preference
santa.santa_age
santa.celebrate_birthday
santa.get_mad_at("Vixen")
santa.gender = "gender queer"
santa.ethnicity
santa.age

# santas = []
# example_genders = ["female", "male", "gender queer", "bigender"]
# example_ethnicities = ["Asian", "Pacific Islander", "Native American", "white", "black", "Latino"]
# #Loop through all example genders or ethnicities until we run out
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end





