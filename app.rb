require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

module ChildCareCoop
  class App < Sinatra::Application

    register Sinatra::ActiveRecordExtension

    get '/test' do
      "Hello world!"
    end

  end
end

