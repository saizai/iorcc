# Replace 'tic_tac_toe' with your entry name

# Require whatever test libraries you need
require 'rspec'
require 'rspec/core/rake_task'

namespace 'tic_tac_toe' do
  # This works if you're using RSpec
  RSpec::Core::RakeTask.new(:test) do |t|
    t.pattern = File.join(File.expand_path(File.dirname(__FILE__)), './test/*.rb')
    # t.options = '-v'
  end
  
  # If you're not, then you have to do something different. Make sure it results in a task named 'test'.
  # desc 'Test tic_tac_toe'
  # task :test do
  #   ...
  # end
end