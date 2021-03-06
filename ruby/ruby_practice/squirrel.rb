# Brrr, it's cold out there! We're going to follow along with one of North America's most common mammals that we see all year round: the squirrel.
#
# Create a Squirrel class that can be initialized with a color and location. There are gray, red, black, and even albino squirrels and they live in locations like the city, state, woods, in town, whatever you feel like.

#
# For instance: one squirrel could be a gray squirrel who lives in the boonies, another instance of a squirrel could be red who lives in Manhattan. Initialize a couple of different squirrels to demonstrate this functionality.
# ----

# Our squirrels might want to find a new home base if too many humans or predators move in, but they can never change their color. Make the color readable from outside the class, and make the location readable and writeable.
# ----

# Contrary to popular belief, squirrels don't hibernate during the winter, they just sleep a lot!
#
# Create two instance methods: `wake_up` and `sleep`. These should update an instance variable in order to let us know if the squirrel is awake or not. Every squirrel should start out asleep when they are initialized.

# In preparation for winter, squirrels and other small animals hide nuts to get them through the winter. Nuts are hidden in various locations.
#
# Create a `hoard_locations` data structure that will track two things: the location of a particular hoard (e.g. "knot hole" or "barn attic"), and how many nuts are stored there (e.g. 6). The `hoard_locations` should start out empty.
# ----

# During the summer and fall, the squirrel has to hide their nuts. Create a `store_food` instance method that takes a hoard location and a number of nuts, and stores this in the `hoard_locations` data structure. If the hoard location already exists, this method should add to the existing number of nuts there. If the hoard location doesn't exist, it should create a new entry.
# ---

class Squirrel
  attr_reader :color, :asleep, :hoard_location
  attr_accessor :location, :nuts_no

  def initialize(color, location)
    @color = color
    @location = location
    @asleep = true
    @hoard_location = {}
    @nuts_no = 0
  end

  def wake_up
    @asleep = false
  end

  def sleep
    @asleep = true
  end

  def store_food (hoard_location, nuts_no)
    @hoard_locations{hoard_location} = nuts_no
    p @hoard_locations
  end
end

locations = ["city", "state", "woods", "in town", "Hawaii"]
colors = ["gray", "black", "red", "albino"]


3.times do
p newest_squirrel = Squirrel.new(locations.sample, colors.sample)
p newest_squirrel.store_food("tree", "4")
end







# Every day during the winter, the squirrel will wake up and find one of his nut stores. Squirrels don't have a great memory so the squirrel will just find one of the stores and eat three of the nuts.
#
# Create an instance method called `eat_something` that will wake the squirrel up, choose a hoard location at random, remove the correct number of nuts squirrels eat for the squirrel to munch on, and then have the squirrel go back to sleep.
# ---

# Squirrels hide their nuts in holes in the ground, but sometimes forget about them. Sad for the squirrel, but these can sprout into trees so yay!
#
# Create an instance method called `forget` that deletes a random hoard location from the squirrel's hoard locations and returns a string telling us that a new tree has sprouted.
# ---

