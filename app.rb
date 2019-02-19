require 'sinatra'
set :session_secret, 'super secret'

get '/secret' do
  'Hello Message!'
end

require 'sinatra'
get '/cat' do
  @name = ["Amigo", "Oscar", "Vicking"].sample
  erb :index #erb() method reads the input file, processes Ruby that is inside and returns resulting HTML
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
