require('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/scrabble_score')
require('pry')

get('/') do
  erb(:form)
end

get('/scrabble_score') do
  @word = params.fetch("word")
  erb(:scrabble_score)
end
