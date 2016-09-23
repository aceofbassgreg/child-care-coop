require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

require './app/models/address'

ENV['RACK_ENV'] ||= 'development'

get '/test' do
  "Hello world!"
end

get '/address/:id' do
  Address.find(params[:id]).to_json
end

get '/care_request/:id' do
  Venue.find(params[:id]).to_json
end

get '/child/:id' do
  Child.find(params[:id]).to_json
end

get '/credit/:id' do
  Credit.find(params[:id]).to_json
end

get '/family/:id' do
  Family.find(params[:id]).to_json
end

get '/parent/:id' do
  Parent.find(params[:id]).to_json
end

get '/playdate/:id' do
  Playdate.find(params[:id]).to_json
end

get '/playgroup/:id' do
  Playgroup.find(params[:id]).to_json
end

get '/venue/:id' do
  Venue.find(params[:id]).to_json
end

post '/address' do
  begin
    address = Address.create!(params[:address])
    address.to_json
  rescue
    {'error': 'Could not create Address'}.to_json
    raise 
  end
end

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

delete '/address/:id' do

end

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
