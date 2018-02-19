#!/home/linuxbrew/.linuxbrew/bin/env ruby
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/card'

get('/') do
  @entries = Entry.list
  erb(:entries)
end

post('/') do
  word = params["word"]
  Entry.new(word)
  @entries = Entry.list
  erb(:entries)
end

get('/:word') do
  word = params[:word]
  @entry = Entry.find(word)
  # binding.pry
  erb(:entry)
end

post('/:word') do
  word = params[:word]
  definition = params["definition"]
  @entry = Entry.find(word)
  @entry.define(definition)
  erb(:entry)
end
