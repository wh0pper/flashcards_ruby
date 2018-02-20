#!/home/linuxbrew/.linuxbrew/bin/env ruby
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/card'
require 'pg'

DB = PG.connect({:dbname => 'flashcards_test'})
Card.remove_all

get('/') do
  @cards = Card.read_all
  erb(:flashcards)
end

post('/') do
  front = params["front"]
  back = params["back"]
  card = Card.new({:front => front, :back => back})
  card.create
  @cards = Card.read_all
  erb(:flashcards)
end

# get('/:word') do
#   word = params[:word]
#   @entry = Entry.find(word)
#   # binding.pry
#   erb(:entry)
# end
#
# post('/:word') do
#   word = params[:word]
#   definition = params["definition"]
#   @entry = Entry.find(word)
#   @entry.define(definition)
#   erb(:entry)
# end
