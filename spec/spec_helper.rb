ENV["RACK_ENV"] = "test"

require_relative "../server"
require "rspec"
require "capybara/rspec"
require "pry"

Capybara.app = Sinatra::Application
