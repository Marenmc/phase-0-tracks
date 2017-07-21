# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
    # define food_list method
    # convert input to array, then split said array
    # create new list of food items
    # generate empty hash
    # assign key to food item, and quantity (value) = 1
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash
def food_list(list)
    food_hash = {}
    food_array = list.split(' ')
    food_array.each do |food_item|
        food_hash[food_item] = 1
    end
    food_hash
end
#puts test_list = ('carrots apple pizza cereal')
#grocery_list = food_list(test_list)
############################################################################
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
    # define add_food method
    # pass food_list as 'list'
    # add new data to hash
# output: New updated hash
def add_item(shopping_list, item, quantity)
    shopping_list[item] = quantity
    shopping_list
end
#puts add_item(grocery_list, 'pear', 2)
############################################################################
# Method to remove an item from the list
# input: list, item name
# steps:
    # define remove_food_item method
    # take in list (updated)
    # remove desired item (key)
def remove_item(grocery_list, item)
    grocery_list.delete(item)
    grocery_list
end
#puts remove_item(grocery_list, 'cereal')
# output: Hash list with item removed
############################################################################
# Method to update the quantity of an item
# input: list, item, updated quantity
# steps:
    # define update_quant method
    # take in list (updated)
    # figure out item (+ quantity) that should be updated
    # update
def update_quantity(grocery_list, item, quantity)
    grocery_list[item] = quantity
    grocery_list
end
#puts update_quantity(grocery_list, 'apple', 20)
# output: Hash list with quantity updated
############################################################################
# Method to print a list and make it look pretty
# input: Hash list
# steps:
    # define printing method
    # print and format the list
def print_pretty(grocery_list)
    grocery_list.each do |item, quantity|
        puts "you bought #{quantity} #{item}"
    end
end
#print_pretty(grocery_list)
# output: Pretty list
############################################################################
# Test Cases
puts "***********************Test Cases!***********************************"
test_food_list = {}
add_item(test_food_list, 'tomatoes', 3)
add_item(test_food_list, 'lemonade', 2)
add_item(test_food_list, 'onions', 1)
add_item(test_food_list, 'ice cream', 4)
print_pretty(test_food_list)
puts "********************************************************************"
remove_item(test_food_list, 'lemonade')
print_pretty(test_food_list)
puts "********************************************************************"
update_quantity(test_food_list, 'ice cream', 1)
print_pretty(test_food_list)

## REFLECTIONS
#What did you learn about pseudocode from working on this challenge?
 #The psuedo code was really helpful in forcing us to think about what we wanted the input and output to be. When we received random output, it was helpful to look back at the output we were expecting and tweak our code to be able to get that.
#What are the tradeoffs of using arrays and hashes for this challenge?
 #We decided to use an array because we were using a data set that, while it was a list, demanded other information (quantity). In order for us to actually store that data, we needed to do it in a hash.
#What does a method return?
 #A method doesn't return anything unless you call it in your driver code :)
#What kind of things can you pass into methods as arguments?
 #You pass in any variable you want into your method. This can include the actual array we're using as well as the variables we're trying to pass through.
#How can you pass information between methods?
 #You can pass information between methods in the code outside of the methods. We used the same array in all of our methods and then printed that data outside the array.
#What concepts were solidified in this challenge, and what concepts are still confusing?
  #First of all, props to Davina. A lot of different concepts were solidified in this challenge. First of all, I have a much better understanding of how to actually pass in variables (and how flexible they are) within a method. I did realize, I am still a bit confused about block parameters.
