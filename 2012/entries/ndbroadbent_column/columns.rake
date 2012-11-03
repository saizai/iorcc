require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = File.join(File.expand_path(File.dirname(__FILE__)), './spec/*.rb')
end
