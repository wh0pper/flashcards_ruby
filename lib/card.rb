require("pry")

class Card
  attr_accessor :front, :back

  def initialize(attributes)
    @front = attributes[:front]
    @back = attributes[:back]
  end

  def self.all
    returned_cards = DB.exec("SELECT * FROM cards;")
    cards = []
    returned_cards.each() do |card|
      front = card.fetch("front")
      back = card.fetch("back")
      cards.push(Card.new({:front => front, :back => back}))
    end
    return cards
  end

  def ==(other_card)
    @front == other_card.front
  end

  def save
    DB.exec("INSERT INTO cards (front, back) VALUES ('#{@front}', '#{@back}');")
  end

end
