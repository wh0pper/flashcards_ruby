require("pry")

class Card
  attr_accessor :front, :back

  def initialize(attributes)
    @front = attributes[:front]
    @back = attributes[:back]
  end

  def ==(other_card)
    @front == other_card.front
  end
end
