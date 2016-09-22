require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

require './app/models/address'

ENV['RACK_ENV'] ||= 'development'

get '/test' do
  "Hello world!"
end

get '/address/:id' do
  Address.find(params[:id])
end

# get '/care_request/:id' do

# end

# get '/child/:id' do

# end

# get '/credit/:id' do

# end

# get '/family/:id' do

# end

# get '/parent/:id' do

# end

# get '/playdate/:id' do

# end

# get '/playgroup/:id' do

# end

# get '/venue/:id' do

# end

# post '/address' do

# end

# post '/care_request' do

# end

# post '/child' do

# end

# post '/credit' do

# end

# post '/family' do

# end

# post '/parent' do

# end

# post '/playdate' do

# end

# post '/playgroup' do

# end

# post '/venue' do

# end

# delete '/address/:id' do

# end

# delete '/care_request/:id' do

# end

# delete '/child/:id' do

# end

# delete '/credit/:id' do

# end

# delete '/family/:id' do

# end

# delete '/parent/:id' do

# end

# delete '/playdate/:id' do

# end

# delete '/playgroup/:id' do

# end

# delete '/venue/:id' do

# end
