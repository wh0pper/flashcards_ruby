require 'rspec'
require 'pry'
require 'card'


describe('Card') do
  describe('#initialize') do
    it('creates new card instance') do
      card = Card.new('term', 'definition')
      expect(card.front).to(eq('term'))
      expect(card.back).to(eq('definition'))
    end
  end


end
