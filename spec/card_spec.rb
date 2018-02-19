require 'rspec'
require 'pg'
require 'pry'
require 'card'

DB = PG.connect({:dbname => 'flashcards_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM cards *;")
  end
end

describe('Card') do
  describe('#initialize') do
    it('creates new card instance') do
      card = Card.new({:front =>'term', :back => 'definition'})
      expect(card.front).to(eq('term'))
      expect(card.back).to(eq('definition'))
    end
  end

  describe('#==') do
    it('returns true if card fronts are the same') do
      card1 = Card.new({:front =>'term', :back => 'definition'})
      card2 = Card.new({:front =>'term', :back => 'definition'})
      expect(card1==card2).to(eq(true))
    end
  end

  describe('#create') do
    it('creates card to database') do
      card1 = Card.new({:front =>'front1', :back => 'back1'})
      card2 = Card.new({:front =>'front2', :back => 'back2'})
      card1.create
      expect(Card.all.include?(card1)).to(eq(true));
      expect(Card.all.include?(card2)).to(eq(false));
    end

    # it('returns id') do
    #   card1 = Card.new({:front =>'front1', :back => 'back1'})
    #   card1.create
    #   result = DB.exec("SELECT id FROM cards WHERE front = '#{@front}' AND back = '#{@back}';")
    #   binding.pry
    #   expect(result[0].fetch('id')).to(eq(card1.id))
    # end
  end

  describe('#clear') do
    it('clears all rows from card table') do
      card1 = Card.new({:front =>'front1', :back => 'back1'})
      card1.create
      Card.clear
      expect(Card.all).to(eq([]))
    end
  end

  describe('#update') do
    it('updates card in cards table') do
      card1 = Card.new({:front =>'front1', :back => 'back1'})
      card1.create
      card1.front = 'new front'
      card1.back = 'new back'
      expect(Card.all.include?(card1)).to(eq(false))
      card1.update
      expect(Card.all.include?(card1)).to(eq(true))
    end
  end
end
