require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

Dir["./app/models/*.rb"].each do |file|
  require file
end

ENV['RACK_ENV'] ||= 'development'

get '/test' do
  "Hello world!"
end

get '/address/:id' do
  basic_get_response(Address)
end

get '/care_request/:id' do
  basic_get_response(CareRequest)
end

get '/child/:id' do
  basic_get_response(Child)
end

get '/credit/:id' do
  basic_get_response(Credit)
end

get '/family/:id' do
  basic_get_response(Family)
end

get '/guardian/:id' do
  basic_get_response(Guardian)
end

get '/playdate/:id' do
  basic_get_response(Playdate)
end

get '/playgroup/:id' do
  basic_get_response(Playgroup)
end

get '/venue/:id' do
  basic_get_response(Venue)
end

post '/address' do
  basic_post_response(Address)
end

post '/care_request' do
  basic_post_response(CareRequest)
end

post '/child' do
  basic_post_response(Child)
end

post '/credit' do
  basic_post_response(Credit)
end

post '/family' do
  basic_post_response(Family)
end

post '/guardian' do
  basic_post_response(Guardian)
end

post '/playdate' do
  basic_post_response(Playdate)
end

post '/playgroup' do
  basic_post_response(Playgroup)
end

post '/venue' do
  basic_post_response(Venue)
end

delete '/address/:id' do
  basic_delete_response(Address)
end

delete '/care_request/:id' do
  basic_delete_response(CareRequest)
end

delete '/child/:id' do
  basic_delete_response(Child)
end

delete '/credit/:id' do
  basic_delete_response(Credit)
end

delete '/family/:id' do
  basic_delete_response(Family)
end

delete '/guardian/:id' do
  basic_delete_response(Guardian)
end

delete '/playdate/:id' do
  basic_delete_response(Playdate)
end

delete '/playgroup/:id' do
  basic_delete_response(Playgroup)
end

delete '/venue/:id' do
  basic_delete_response(Venue)
end

  private

    def basic_get_response(model_klass)
      model_klass.find(params[:id]).to_json
    end

    def basic_post_response(model_klass)
      request_body = request.body.read
      attrs = JSON.parse(request_body)
      address = model_klass.create!(attrs)
      address.to_json
    end

    def basic_delete_response(model_klass)
      model_klass.find(params[:id]).destroy!
      {'status': "#{model_klass} #{:id} has been deleted!"}
    end
