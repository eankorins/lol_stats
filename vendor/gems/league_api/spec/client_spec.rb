require 'spec_helper'

describe LolApi::Client do
	describe 'returns champion' do
		champion = LolApi.champion_by_id(35, champData: "all") 
		subject { champion }
		it { should be_kind_of(LolApi::Champion) }
	end
	describe 'returns item' do
		item = LolApi.item_by_id(3020, itemData: "all")
		subject { item }
		it { should be_kind_of(LolApi::Item) }
	end
	describe 'returns mastery' do
		mastery = LolApi.mastery_by_id(4353)
		subject { mastery }
		it { should be_kind_of(LolApi::Mastery)}
	end
end

