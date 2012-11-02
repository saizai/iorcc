Dir.glob(File.join(File.dirname(__FILE__), '**', '*.rake')).each do |file|
  load file
end

desc 'Test everything'
task :test_all do
  Rake.application.tasks.select{|task| task.name =~ /:test$/ }.each {|test| test.invoke }
end
