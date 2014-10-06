require 'rubygems'
require 'sinatra'

def generate_token(magic)
  (0..50).map { ('a'..'z').to_a[rand(magic)] }.join
end

get '/generate/:magic/' do
  token = generate_token(magic)
  
  "Generated number #{token}"
end
