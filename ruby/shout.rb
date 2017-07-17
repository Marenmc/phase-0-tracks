##NEW CODE

module Shout
 def yell_angrily(words)
    puts words + "!!!" + " :("
 end

 def yell_happily(words)
    puts words + " Whooo!" + " Fuck yeah!"
 end
end

class Moms
  include Shout
end

class Coaches
  include Shout
end

mom = Moms.new
mom.yell_angrily("Maren Elizabeth McMullan!")

coach = Coaches.new
coach.yell_happily("Go team!")




##OLD CODE
# module Shout
#  def self.yell_angrily(words)
#     words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#      words + "Whooo!" + "Fuck yeah!"
#  end
# end

# #driver code
# p Shout.yell_angrily("oh no you didn't")
# p Shout.yell_happily("I won a million dollars!")