require 'spec_helper'

describe LolApi::Summoner do
	before do
		@summoner = FactoryGirl.build(:summoner)
	end
	subject { @summoner }

	it { should be_kind_of(LolApi::Summoner) }
	it { should respond_to(:id) }
	it { should respond_to(:name) }
	it { should respond_to(:profile_icon_id) }
	it { should respond_to(:revision_date) }
	it {should respond_to(:level) }

	describe "must return" do
		its(:id) { should eq 332541}
		its(:name) { should eq "furryballs" }
		its(:profile_icon_id) { should eq 28 }
		its(:revision_date) { should eq 1408047409000 }
		its(:level) { should eq 30}
	end
end