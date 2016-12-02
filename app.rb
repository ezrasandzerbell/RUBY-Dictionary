require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/words')
require('./lib/definitions')
require('pry')

get('/') do
  erb(:index)
end

get('/word_form') do
  erb(:word_form)
end

post('/word_input') do
  word = Word.new(params.fetch("word_entry"))
  word.save()
  @words = Word.all()
  erb(:word_list)
end

get('/word_definitions/:id') do
  @word = Word.find(params.fetch('id'))
  erb(:word_definitions)
end

get('/word_list') do
  erb(:word_list)
end
