require './app'
require 'sinatra/activerecord/rake'

namespace :db do
  task :load_config do
    require "./app"
  end
end

Dir.glob('lib/tasks/*.rake').each { |r| load r}
