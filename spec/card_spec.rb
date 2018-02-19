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
      expect(card1.front == card2.front).to(eq(true))
    end
  end
end
