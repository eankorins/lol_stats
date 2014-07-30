require 'spec_helper'

describe LolApi::Client do
	describe 'returns champion' do
		champion = LolApi.champion_by_id(35, champData: "all") 
		subject{champion}
		it { should be_kind_of(LolApi::Champion)}
	end
end

