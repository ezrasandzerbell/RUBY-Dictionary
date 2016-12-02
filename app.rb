require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/words')
require('./lib/definitions')
require('pry')

get('/') do
  erb(:index)
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
