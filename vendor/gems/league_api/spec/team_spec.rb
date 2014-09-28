require 'spec_helper'


describe "teams" do
	before do
		@match = FactoryGirl.build(:match)
	end
	subject(:team) { @match.teams.first}

	it { should be_kind_of(LolApi::Team) }
	it { should respond_to(:bans) }
	it { should respond_to(:baron_kills) }
	it { should respond_to(:dragon_kills) }
	it { should respond_to(:first_baron) }
	it { should respond_to(:first_blood) }
	it { should respond_to(:first_inhibitor) }
	it { should respond_to(:first_tower) }
	it { should respond_to(:inhibitor_kills) }
	it { should respond_to(:team_id) }
	it { should respond_to(:tower_kills) }
	it { should respond_to(:vilemaw_kills) }
	it { should respond_to(:winner) }

	describe "should return" do
		its(:bans) { should_not be_empty }
		its(:baron_kills) { should eq 1 }
		its(:dragon_kills) { should eq 1 }
		its(:first_baron) { should eq true }
		its(:first_blood) { should eq false }
		its(:first_inhibitor) { should eq false }
		its(:first_tower) { should eq true }
		its(:inhibitor_kills) { should eq 1 }
		its(:team_id) { should eq 100 }
		its(:tower_kills) { should eq 8 }
		its(:vilemaw_kills) { should eq 0 }
		its(:winner) { should eq true }
	end
end