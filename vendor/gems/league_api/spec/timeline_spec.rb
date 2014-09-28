require 'spec_helper'

describe LolApi::Timeline do
	before do
		@match = FactoryGirl.build(:match)
	end
	subject(:timeline) { @match.timeline }

	it { should respond_to(:interval)}
	it {should respond_to(:frames) }

	describe "should return" do
		its(:interval) { should eq 60000 }
		its(:frames) { should_not be_empty }
	end

	describe "frame" do
		subject(:frame) { timeline.frames[1] }

		it { should respond_to(:events) }
		it { should respond_to(:participant_frames) }
		it { should respond_to(:timestamp) }

		describe "should return" do
			its(:events) { should_not be_empty }
			its(:participant_frames) { should_not be_empty }
			its(:timestamp) { should eq 60016 }
		end

		describe "event" do
			subject(:event) { frame.events.first }
			
			it { should be_kind_of(LolApi::Event)}
			it { should respond_to(:assisting_participant_ids) } 
			it { should respond_to(:building_type) }
			it { should respond_to(:creator_id) }
			it { should respond_to(:event_type) }
			it { should respond_to(:item_after) }
			it { should respond_to(:item_before) }
			it { should respond_to(:item_id) }
			it { should respond_to(:killer_id) }
			it { should respond_to(:lane_type) }
			it { should respond_to(:level_up_type) }
			it { should respond_to(:monster_type) }
			it { should respond_to(:participant_id) }
			it { should respond_to(:position) }
			it { should respond_to(:skill_slot) }
			it { should respond_to(:team_id) }
			it { should respond_to(:timestamp) }
			it { should respond_to(:tower_type) }
			it { should respond_to(:victim_id) }
			it { should respond_to(:ward_type) }

			describe "should return" do
				its(:assisting_participant_ids)  {should eq nil}
				its(:building_type) {should eq nil }
				its(:creator_id) {should eq nil }
				its(:event_type) {should eq "ITEM_PURCHASED" }
				its(:item_after) {should eq nil }
				its(:item_before) {should eq nil }
				its(:item_id) {should eq 1029 }
				its(:killer_id) {should eq nil }
				its(:lane_type) {should eq nil }
				its(:level_up_type) {should eq nil }
				its(:monster_type) {should eq nil }
				its(:participant_id) {should eq 10 }
				its(:position) {should eq nil }
				its(:skill_slot) {should eq nil }
				its(:team_id) {should eq nil }
				its(:timestamp) {should eq 7736 }
				its(:tower_type) {should eq nil }
				its(:victim_id) {should eq nil }
				its(:ward_type) {should eq nil }
			end
		end
		describe "participant frames" do
			subject(:participant_frame) { frame.participant_frames.first }

			it { should be_kind_of(LolApi::ParticipantFrame)}
			it { should respond_to(:current_gold) }
			it { should respond_to(:jungle_minions_killed) }
			it { should respond_to(:level) }
			it { should respond_to(:minions_killed) }
			it { should respond_to(:participant_id) }
			it { should respond_to(:position) }
			it { should respond_to(:total_gold) }
			it { should respond_to(:xp) }

			describe "should return" do
				its(:current_gold) { should eq 475 }
				its(:jungle_minions_killed) { should eq 0 }
				its(:level) { should eq 1 }
				its(:minions_killed) { should eq 0 }
				its(:participant_id) { should eq 3 }
				its(:position) { should eq LolApi::Position }
				its(:total_gold) { should eq 475 }
				its(:xp) { should eq 0 }
			end
		end
	end
end