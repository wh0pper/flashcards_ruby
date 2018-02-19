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

  describe('#save') do
    it('saves card to database') do
      card = Card.new({:front =>'save-test', :back => 'back'})
      card.save
      expect(DB.exec("SELECT (front) VALUES ('save-test')")).to(eq(true));
      expect(DB.exec("SELECT (front) VALUES ('not save-test')")).to(eq(false));
    end
  end
end
