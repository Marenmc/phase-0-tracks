puts "----------RELEASE 0 AND 1 - PUPPIES-----------"
class Puppy
  #fetch method
  def fetch(toy)
    p "I brought back the #{toy}"
  end

  #speak method
  def speak
    4.times{puts "Woof!"}
  end

  #roll over method
  def roll_over
    p "*rolls over*"
  end

  #dog years method
  def dog_years(human_years)
    p 7*(human_years)
  end

  #sit method
  def sit
    p "*sits*"
  end

  #initialize new Puppy
  def initialize
    puts "Initializing a new puppy instance"
  end

end

#Initialize a new instance of a Puppy
pepper = Puppy.new

#Get new puppy to fetch a ball
pepper.fetch("ball")

#Get new puppy to speak
pepper.speak

#Get puppy to roll over
pepper.roll_over

#Get puppy age in dog years
pepper.dog_years(2)

#Get puppy to sit
pepper.sit

#Run the Initializing instance
Puppy.new

puts "----------RELEASE 2 - NEW STUDENT-----------"

class Student
  #Initialize new student
  def initialize
    puts "Initializing a new student record"
  end

  #Takes in student test scores
  def test_scores(score)
    puts "Student scored an #{score}"
  end

  def go_to_recess
    puts "Student goes to receess"
  end
end


student_array = []

#Use a loop to create 50 instances of our data
while student_array.length < 51
student_array << student = Student.new
end

#Iterate over each of the 50 user
student_array.each do |item|
  Student.new
  puts item.test_scores("A")
  puts item.go_to_recess
end

## Question for code review - why is there a space between recess and test scores??


