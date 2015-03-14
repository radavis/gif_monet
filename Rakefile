require './server'

unless Sinatra::Base.production?
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
end
