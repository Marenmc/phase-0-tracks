class Santa
  attr_reader :reindeer_ranking
  attr_accessor :gender, :ethnicity, :age

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho Ho Ho. Happy Holidays."
    puts "#{@gender}, #{@ethnicity} santa"
  end

  def celebrate_birthday
    @age += 1
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end

end

santa1 = Santa.new("female", "white")
santa1.speak
santa1.eat_milk_and_cookies("chocolate chip")
p santa1.reindeer_ranking

p ("*") * 100

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

i = 0
7.times do
  newest_santa = Santa.new(example_ethnicities.sample, example_genders.sample)
  i += 1
  newest_santa.age = rand(0..140)
  p newest_santa
end
p ("*") * 100

p santa1.age
santa1.celebrate_birthday
p santa1.age
santa1.celebrate_birthday
p santa1.age

p santa1.reindeer_ranking
p santa1.get_mad_at("Vixen")
p santa1.gender
santa1.gender = "nasldflkasjdf"
p santa1.gender
p santa1.ethnicity
p santa1.ethnicity = "afro-cuban"
p santa1.ethnicity

