class Dancer
  attr_reader :name,:card
  attr_accessor :age,

  def initialize(name,age)
    @name = name
    @age = age
    @card = []
  end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

#add dancers to the queue as input
  def queue_dance_with(next_dancer)
    @card.push(next_dancer)
    # @card - this is an implicit return
  end

#Once the next person starts dancing, the second person in line becomes the first in the queue

def begin_next_dance
  # currenty_dancing = @card.delete_at(0) - don't need this.
  "Now dancing with #{@card.delete_at(0)}."
end



end
