require 'json'

FactoryGirl.define do

	factory :champion, :class => LolApi::Champion do |f|
		skip_create
		path = File.expand_path("../fixtures/champion.json", __FILE__)
		json = JSON.parse(File.read(path))
		initialize_with { new(json) }
	end
end