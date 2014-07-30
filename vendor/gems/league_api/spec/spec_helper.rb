require 'lol_api'
require 'rubygems'
require 'json_spec'
require 'rspec'
require 'rspec/its'
require 'factory_girl_rspec'
require 'factories'
require 'capybara'
LolApi.configure do |config|
	config.api_key = '1cef001f-554c-4750-85da-7404492b8b22'
end

JsonSpec.configure do |config|
	config.exclude_keys "created_at", "updated_at"
end
RSpec.configure do |config|

  	config.include FactoryGirl::Syntax::Methods
  	config.color = true
  	config.formatter = :documentation
  	config.include Capybara::DSL
end