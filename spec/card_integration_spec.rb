require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('flashcards page', {:type => :feature}) do
  it('creates and displays new cards') do
    visit('/')
    fill_in('front', :with => 'term')
    fill_in('back', :with => 'description')
    click_button('Create Flashcard')
    expect(page).to(have_content('term'))
  end
end

# describe('entry page', {:type => :feature}) do
#   it('lists added word definitions') do
#     visit('/word1')
#     fill_in('definition', :with => 'the first word')
#     click_button('Add definition')
#     expect(page).to have_content('word1')
#     expect(page).to have_content('the first word')
#   end
# end
