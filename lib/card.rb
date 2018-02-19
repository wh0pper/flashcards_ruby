require("pry")

class Card
  attr_accessor :front, :back, :id

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

  def self.clear
    DB.exec("DELETE FROM cards *;")
  end

  def ==(other_card)
    @front == other_card.front
  end

  def create
    DB.exec("INSERT INTO cards (front, back) VALUES ('#{@front}', '#{@back}');")
    result = DB.exec("SELECT id FROM cards WHERE front = '#{@front}' AND back = '#{@back}';")
    @id = result[0].fetch('id').to_i
  end

  def update
    DB.exec("UPDATE cards SET front = '#{@front}', back = '#{@back}' WHERE id=#{@id};")
  end

  def delete
    DB.exec("DELETE FROM cards WHERE id=#{@id};")
  end
end
