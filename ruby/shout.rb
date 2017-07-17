module Shout
 def self.yell_angrily(words)
    words + "!!!" + " :("
 end

 def self.yell_happily(words)
     words + "Whooo!" + "Fuck yeah!"
 end
end

#driver code
p Shout.yell_angrily("oh no you didn't")
p Shout.yell_happily("I won a million dollars!")