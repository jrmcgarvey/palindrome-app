require 'sinatra'
require 'rerun'
require 'mhartl_palindrome'

set :bind, '0.0.0.0'

get '/' do
  @title = 'Home'
  erb :index
end

get '/about' do
  @title = 'About'
  erb :about
end

get '/palindrome' do
  @title = 'Palindrome Detector'
  erb :palindrome
end

post '/check' do
  @phrase = params[:phrase]
  erb :result
end