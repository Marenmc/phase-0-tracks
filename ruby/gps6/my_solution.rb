# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [1.5] hours on this challenge.
# EXPLANATION OF require_relative
# Require_relative imports data from a file that is in a relative location calling on that file within quotation marks.
#
require_relative 'state_data'
class VirusPredictor
  attr_reader :state, :population, :population_density
#Initializing a new instance of the class of a new VirusPredictor.  It is taking in information about the state (state_of_origin, population_density and population). It is then creating instance variables using this input data.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#It calls the two other methods described below.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end
private
#Method calculates the impact of the influence will likely have on the population within a given state.  It makes this calculation using conditional statements based on calculation density. Then prints that data for that given state.
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
# This method also uses the population density to calculate the speed at which the disease will spread within the state.  It again uses conditional statements to determine the speed using population density then prints the calculated data.
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, population_data|
  state_instance = VirusPredictor.new(state_name, population_data[:population_density], population_data[:population])
  state_instance.virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:# population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"# ][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["# California"][:population_density], STATE_DATA["California"][:# population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:# population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


## COMMENTS:
#What are the differences between the two different hash syntaxes shown in the state_data file?
  ## There is a syntax with a quote and a hash rocket and a syntax with a colon after the key. Because there are two different hashes within the document, they are delineated by the different hash syntaxes.
#What does require_relative do? How is it different from require?
  ## Require_relative imports data from a file that is in a relative location calling on that file within quotation marks.
#What are some ways to iterate through a hash?
  ## You can iterate through a hash by using .each, .map, map! You just have to make sure to include both the key and the value in the pipes.
#When refactoring virus_effects, what stood out to you about the variables, if anything?
  ## We noticed that the variables were repeated several times throughout the code and were readable. We thought this would be a great opportunity to do attr_reader up at the top. We also noticed that when we used attr_reader up at the top, we didn't need the local variables or the instane variables.
#What concept did you most solidify in this challenge?
  ## This challenge most solidified attr_reader for me. I wish it solidified my understanding of loops more. Unfortunately I am still not the best with loops.