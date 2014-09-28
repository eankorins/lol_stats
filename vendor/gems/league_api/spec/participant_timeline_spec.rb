require 'spec_helper'

describe "timelines" do
	subject(:timeline) { participant.timeline  }

	it { should respond_to(:ancient_golem_assists) }
	it { should respond_to(:ancient_golem_kills) }
	it { should respond_to(:assisted_lane_deaths_delta) }
	it { should respond_to(:assisted_lane_kills_delta) }
	it { should respond_to(:baron_assists) }
	it { should respond_to(:barron_kills) }
	it { should respond_to(:creeps_delta) }
	it { should respond_to(:creep_diff_delta) }
	it { should respond_to(:damage_taken_diff_delta) }
	it { should respond_to(:damage_take_delta) }
	it { should respond_to(:dragon_assists) }
	it { should respond_to(:dragon_kills) }
	it { should respond_to(:elder_lizard_assists) }
	it { should respond_to(:eler_lizard_kills) }
	it { should respond_to(:gpm_delta) }
	it { should respond_to(:inhibitor_assists) }
	it { should respond_to(:inhibitor_kills) }
	it { should respond_to(:lane) }
	it { should respond_to(:role) }
	it { should respond_to(:tower_assists) }
	it { should respond_to(:tower_kills) }
	it { should respond_to(:vilemaw_assists) }
	it { should respond_to(:vilemaw_kills) }
	it { should respond_to(:wards_delta) }
	it { should respond_to(:xp_diff_delta) }
	it { should respond_to(:xp_delta) }

	describe "should return" do
		its(:ancient_golem_assists) { should be_kind_of(LolApi::TimelineData) }
		its(:ancient_golem_kills) { should be_kind_of(LolApi::TimelineData) }
		its(:assisted_lane_deaths_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:assisted_lane_kills_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:baron_assists) { should be_kind_of(LolApi::TimelineData) }
		its(:barron_kills) { should be_kind_of(LolApi::TimelineData) }
		its(:creeps_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:creep_diff_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:damage_taken_diff_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:damage_take_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:dragon_assists) { should be_kind_of(LolApi::TimelineData) }
		its(:dragon_kills) { should be_kind_of(LolApi::TimelineData) }
		its(:elder_lizard_assists) { should be_kind_of(LolApi::TimelineData) }
		its(:eler_lizard_kills) { should be_kind_of(LolApi::TimelineData) }
		its(:gpm_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:inhibitor_assists) { should be_kind_of(LolApi::TimelineData) }
		its(:inhibitor_kills) { should be_kind_of(LolApi::TimelineData) }
		its(:lane) { should eq "BOTTOM" }
		its(:role) { should eq "DUO_CARRY"}
		its(:tower_assists) { should be_kind_of(LolApi::TimelineData) }
		its(:tower_kills) { should be_kind_of(LolApi::TimelineData) }
		its(:vilemaw_assists) { should be_kind_of(LolApi::TimelineData) }
		its(:vilemaw_kills) { should be_kind_of(LolApi::TimelineData) }
		its(:wards_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:xp_diff_delta) { should be_kind_of(LolApi::TimelineData) }
		its(:xp_delta) { should be_kind_of(LolApi::TimelineData) }
	end

	describe 'creeps delta' do
		subject { timeline.creeps_delta }

		it { should respond_to(:ten_to_twenty) }
		it { should respond_to(:thirty_to_end) } 
		it { should respond_to(:twenty_to_thirty) }
		it { should respond_to(:zero_to_ten) }

		describe "should return" do
			its(:ten_to_twenty) { should eq 7 }
			its(:thirty_to_end) { should eq 2.9 }
			its(:twenty_to_thirty) { should eq 3.8 }
			its(:zero_to_ten) { should eq 5.9 }
		end
	end
end