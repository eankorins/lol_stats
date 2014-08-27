require 'json'

FactoryGirl.define do

	factory :champion, :class => LolApi::Champion do |f|
		skip_create
		path = File.expand_path("../fixtures/champion.json", __FILE__)
		json = JSON.parse(File.read(path))
		initialize_with { new(json) }
	end

	factory :summoner, :class => LolApi::Summoner do |f|
		skip_create
		path = File.expand_path("../fixtures/champion.json", __FILE__)
		json = JSON.parse(File.read(path))
		initialize_with { new(json) }
	end
end
https://euw.api.pvp.net/api/lol/euw/v1.4/summoner/by-name/furryballs?
https://global.api.pvp.net/api/lol/static-data/euw/v1.2/champion?dataById=35&