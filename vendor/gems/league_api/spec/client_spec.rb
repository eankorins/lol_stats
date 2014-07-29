require 'spec_helper'

describe LolApi::Client do
	before do
		LolApi.configure do |config|
    		config.api_key = '1cef001f-554c-4750-85da-7404492b8b22'
		end
	end
	describe 'returns champion' do
		champion = LolApi.champion_by_id(35, champData: "all") 
		subject{champion}
		it { should be_kind_of(LolApi::Champion)}
	end
end

