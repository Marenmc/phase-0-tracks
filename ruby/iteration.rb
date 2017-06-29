# #RELEASE 1
# method

def mexican_food
  mexican_food_1 = "Tacos"
  mexican_food_2 = "Quesadillas"
  puts "I love Mexican food!"
  yield(mexican_food_1, mexican_food_2)
  puts "Why are you not working?"
end


 mexican_food { |mexican_food_1, mexican_food_2| puts "#{mexican_food_1} and #{mexican_food_2} are both great options!" }

# array
 mexican_foods_array = ["tacos", "quesadillas", "burritos", "tortilla chips"]

# hash
fast_food_joints = {
 "mcdonalds" => "burgers",
 "taco_bell" => "mexican",
 "kfc" => "fried_chicken",
 "chipotle" => "mexican"
}

p mexican_foods_array

mexican_foods_array.each  do |food_type|
  p "#{food_type} are great!"
end
p mexican_foods_array

mexican_foods_array.map! do |food_type|
  p "#{food_type} are great!"
end
p mexican_foods_array

p fast_food_joints

fast_food_joints.each do |restaurant_name, cuisine|
puts "#{restaurant_name} serves #{cuisine}."
end

p fast_food_joints

fast_food_joints.map do |restaurant_name, cuisine|
puts "#{restaurant_name} serves #{cuisine}."
end

p fast_food_joints


##RELEASE 2

# array
birthday_party_supplies = ["balloons", "cake", "sprinkles", "bumpin tunes"]

# hash
drinks = {
  coke: "soda",
  martini: "cocktail",
  water: "hydration",
  coffee: "code"
}

# Using delete_if to get rid of one of the values in the selection that doesn't meet the condition with an array; apparently it also permanently deletes cake
birthday_party_supplies.delete_if { |supply| supply.length < 5}
  puts birthday_party_supplies

# Using delete_if to get rid of one of the values in the selection that doesn't meet the condition with a hash; this should permanently delete "soda" and "code"
drinks.delete_if { |beverage, type| type.length < 5}
  puts drinks

# filters data structure for only items that satisfy a condition with an array;
birthday_party_supplies.keep_if { |supply| supply.length > 5}
  puts birthday_party_supplies

# filters data structure for only items that satisfy a condition with a hash;
drinks.keep_if { |beverage, type| type.length > 6}
  puts drinks

# a different method that filters a data structure for only items that satisfy a condition with an array
birthday_party_supplies.select! { |supply| supply == "balloons"}
 puts birthday_party_supplies

# a different method that filters a data structure for only items that satisfy a condition with a hash
 drinks.select! { |beverage, type| type.length > 7}
   puts drinks

# filters data structure to filter items that don't meet the condition with an array
birthday_party_supplies.reject! { |supply| supply.length < 5}
  puts birthday_party_supplies

# filters data structure to filter items that don't meet the condition with an array
drinks.reject! { |beverage, type| type.length < 5}
  puts drinks