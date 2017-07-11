#Create a santa class
class Santa

   #Initialize new santa
   def initialize
    puts "Initializing Santa instance"
   end

   #Make Santa speak
   def speak
     puts "Ho, ho, ho! Happy Holidays!"
   end

   #Make Santa each different cookies
   def eat_milk_and_cookies(cookie_type)
     puts "That was a good #{cookie_type} cookie!"
   end

end

#Driver code
#Initialize a new Santa instance
santa1 = Santa.new
#Make santa speak
santa1.speak
#Make santa eat cookies
santa1.eat_milk_and_cookies("chocolate chip")


