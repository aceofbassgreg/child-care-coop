require './app'
require 'sinatra/activerecord/rake'
require 'rake/testtask'

namespace :db do
  task :load_config do
    require "./app"
  end
end

Dir.glob('lib/tasks/*.rake').each { |r| load r}

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*_test.rb']
end
desc "Run tests"

task default: :test
