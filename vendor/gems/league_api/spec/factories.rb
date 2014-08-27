require 'json'

FactoryGirl.define do

	factory :champion, :class => LolApi::Champion do |f|
		skip_create
		initialize_with { new(read_fixture("champion.json")) }
	end

<<<<<<< HEAD
	factory :item, :class => LolApi::Item do |f|
		skip_create
		initialize_with { new(read_fixture("item.json")) }
	end
	factory :mastery, :class => LolApi::Mastery do |f|
		skip_create
		initialize_with { new(read_fixture("mastery.json")) }
	end

	factory :history_match, :class => LolApi::HistoryMatch do |f|
		skip_create
		initialize_with { new(read_fixture("history.json")) } 
	end
end

def read_fixture(name)
	path = File.expand_path("../fixtures/#{name}", __FILE__)
	JSON.parse(File.read(path))
end
=======
	factory :summoner, :class => LolApi::Summoner do |f|
		skip_create
		path = File.expand_path("../fixtures/champion.json", __FILE__)
		json = JSON.parse(File.read(path))
		initialize_with { new(json) }
	end
end
https://euw.api.pvp.net/api/lol/euw/v1.4/summoner/by-name/furryballs?
https://global.api.pvp.net/api/lol/static-data/euw/v1.2/champion?dataById=35&
>>>>>>> add-summoner-api
