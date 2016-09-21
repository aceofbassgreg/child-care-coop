require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

ENV['RACK_ENV'] ||= 'development'

get '/test' do
  "Hello world!"
end

