class Vehicle
  attr_reader :year, :type, :mileage
  attr_accessor :color, :car_on

  def initialize (color, year, type, wheels_no)
    @color = color
    @year = year
    @type = type
    @wheels_no = wheels_no
    @mileage = 10_000
    @car_on = false
  end

  def age_car_by_one_year
    @year = year + 1
    @mileage = mileage + rand(5000..10_000)
  end

  def turn_car_on_or_off
    if @car_on == true
      @car_on = false
    else @car_on == false
      @car_on = true
    end
  end

  def average_mileage
    car_age = 2017 - @year
    puts "Here's my average miles per year since I bought this car"
    @mileage.to_i / car_age.to_i
  end

  end

vehicle1 = Vehicle.new("blue", 1999, "honda", 4)
p vehicle1
p vehicle1.color = "red"
p vehicle1
p vehicle1.age_car_by_one_year
puts "________________"
p vehicle1.car_on
vehicle1.turn_car_on_or_off
p vehicle1.car_on
vehicle1.turn_car_on_or_off
p vehicle1.car_on
puts "________________"
p vehicle1.average_mileage



colors = ["red", "blue", "green", "silver", "white"]
years = [1999, 2014, 2009, 2017, 1989]
types = ["honda", "toyota", "buick", "saab", "peugeot"]
wheels_no = [4,4,4,4,5]

# #Method that makes an array of all my new cars
# index = 0
# 5.times do |i|
#   newest_car_array = []
#   newest_car_array << Vehicle.new(colors[i], years[i], types[i], wheels_no[i])
#   index += 1
#   p newest_car_array
# end

# #Total mileage
#   def total_mileage(car_array)
#     #ages the vehicles by one year...
#     #provides total combined mileage
#      total_mileage = 0
#       car_array.each do |car|
#         p car.mileage
#         car.age_car_by_one_year
#         p car.mileage
#         total_mileage += car.mileage
#       end
#       p total_mileage
#   end

  #turn on the car
  #look at the mileage
  #average the mileage across all the vehicles
  #turn the car off

def car_thing(car_array)
  total_mileage = 0
  car_array.each do |unique_car|
    unique_car.car_on = true
    unique_car.mileage
    total_mileage += unique_car.mileage
    unique_car.car_on = false
    end
  average_mileage = total_mileage / car_array.length
end

array = [Vehicle.new("blue", 1999, "honda", 4), Vehicle.new("red", 1998, "toyota", 4), Vehicle.new("white", 2001, "mazda", 4)]

#total_mileage(array)

puts "_____________"

p car_thing(array)




