require 'spec_helper'

describe 'Client returns ' do
	describe 'champions' do
		champions = LolApi.champions
		subject { champions }
		it { should_not be_empty }
		describe 'by id' do 
			champion = LolApi.champion_by_id(35, champData: "all") 
			subject { champion }
			it { should be_kind_of(LolApi::Champion) }
		end
	end
	describe 'items' do
		items = LolApi.items
		subject { items }
		it { should_not be_empty }
		describe 'by id' do
			item = LolApi.item_by_id(3020, itemData: "all")
			subject { item }
			it { should be_kind_of(LolApi::Item) }
		end
	end
	describe 'masteries' do
		masteries = LolApi.masteries
		subject { masteries }
		it { should_not be_empty }

		describe 'by id' do
			mastery = LolApi.mastery_by_id(4353)
			subject { mastery }
			it { should be_kind_of(LolApi::Mastery)}
		end
	end
	describe 'history' do
		history = LolApi.history_by_id(332541)
		subject { history }
		it { should_not be_empty }
	end

	describe 'summoner' do
		describe 'by name' do
			summoner = LolApi.summoner_by_name('furryballs')
			subject { summoner }
			it { should be_kind_of(LolApi::Summoner) }
		end

		describe 'by id' do
			summoner = LolApi.summoner_by_id(332541)
			subject { summoner }
			it { should be_kind_of(LolApi::Summoner) }
		end
	end

	describe 'summoner masteries' do
		masteries = LolApi.summoner_masteries(332541)
		subject { masteries }
		it { should be_kind_of(LolApi::SummonerMasteries) }
	end

	describe 'summoner runes' do
		runes = LolApi.summoner_runes(332541)
		subject { runes }
		it { should be_kind_of(LolApi::SummonerRunes) }
	end
end

