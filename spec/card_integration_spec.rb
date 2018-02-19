# require 'capybara/rspec'
# require './app'
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('entries page', {:type => :feature}) do
#   it('lists added words') do
#     visit('/')
#     fill_in('word', :with => 'word1')
#     click_button('Add word')
#     expect(page).to have_content('word1')
#   end
# end
#
# describe('entry page', {:type => :feature}) do
#   it('lists added word definitions') do
#     visit('/word1')
#     fill_in('definition', :with => 'the first word')
#     click_button('Add definition')
#     expect(page).to have_content('word1')
#     expect(page).to have_content('the first word')
#   end
# end
