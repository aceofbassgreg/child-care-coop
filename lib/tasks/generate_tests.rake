require 'rake'

Dir["./app/models/*.rb"].each do |file|
  require file
end

desc "generates tests from model file names"
task :generate_tests do 
  file_names = Dir.entries("./app/models")
  file_names.each do |file_name|
    model_test_dir = './test/models'
    FileUtils.mkdir_p(model_test_dir) unless Dir.exists?(model_test_dir)
    unless file_name.length < 3
      model_name = file_name.sub(".rb","").camelize.constantize
      test_file_name = file_name.sub('.rb','_test.rb')      
      test_file_path = "./#{model_test_dir}/#{test_file_name}"
      unless File.exists?(test_file_path)
        File.open(test_file_path, "w") do |f| 
          f.write('require_relative "../test_helper"')
        end
      end
    end
  end
end