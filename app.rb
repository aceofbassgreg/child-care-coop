require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

get '/test' do
  "Hello world!"
end

