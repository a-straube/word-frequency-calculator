require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_frequency_total') do
  @frequency = params.fetch('sentence').word_frequency('target_word')
  erb(:word_frequency_total)
end
