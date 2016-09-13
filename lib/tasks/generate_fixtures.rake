require 'rake'

file_names = Dir.entries("./app/models")
file_names.each do |file_name|
  if file_name.length > 3
    require "./app/models/#{file_name}"
  end
end

desc "generates fixtures from model file names"
task :generate_fixtures do 
  file_names = Dir.entries("./app/models")
  file_names.each do |file_name|
    fixtures_dir = './test/fixtures'
    FileUtils.mkdir_p(fixtures_dir) unless Dir.exists?(fixtures_dir)
    unless file_name.length < 3
      model_name = file_name.sub(".rb","").camelize.constantize
      fixture_file_name = "#{file_name.sub(".rb","").pluralize}.yml"
      fixture_file_path = "./#{fixtures_dir}/#{fixture_file_name}"
      yaml_str = YAML::dump(model_name.attribute_names)
      unless File.exists?(fixture_file_path)
        File.open(fixture_file_path, "w") do |f| 
          f.write(yaml_str.sub(/(^---\n- id)/,"default").gsub("\n",":\n").gsub("-"," "))
        end
      end
    end
  end
end
