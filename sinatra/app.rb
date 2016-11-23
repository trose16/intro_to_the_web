require 'sinatra'

get '/' do
  'Yo'
end

get '/secret' do
  'Shhhh..... This is a secret'
end

get '/what' do
  'is going on here???'
end

get '/love' do
  'is the answer'
end

get '/bad_ass' do
  'is my cohort'
end

get '/cat' do
  File.read('index.html')
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
