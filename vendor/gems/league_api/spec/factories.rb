require 'json'

FactoryGirl.define do

	factory :champion, :class => LolApi::Champion do |f|
		skip_create
		initialize_with { new(read_fixture("champion.json")) }
	end
	factory :item, :class => LolApi::Item do |f|
		skip_create
		initialize_with { new(read_fixture("item.json")) }
	end
	factory :mastery, :class => LolApi::Mastery do |f|
		skip_create
		initialize_with { new(read_fixture("mastery.json")) }
	end
	factory :summoner, :class => LolApi::Summoner do |f|
		skip_create
		initialize_with { new(read_fixture("summoner.json")) }
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
	