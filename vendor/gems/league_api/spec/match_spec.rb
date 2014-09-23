require 'spec_helper'

describe LolApi::HistoryMatch do
	before do
		@match = FactoryGirl.build(:match)
	end
	subject { @match }

	it { should be_kind_of(LolApi::HistoryMatch)}
	it { should respond_to(:map_id) }
	it { should respond_to(:match_creation)  }
	it { should respond_to(:match_duration)  }
	it { should respond_to(:match_id) }
	it { should respond_to(:match_version) }
	it { should respond_to(:participant_identities) }
	it { should respond_to(:participants)  }
	it { should respond_to(:queue_type) }
	it { should respond_to(:region) }
	it { should respond_to(:season) }
	it { should respond_to(:teams) }
	it { should respond_to(:timeline) }

	describe "must return" do
		its(:map_id) { should eq 1 }
		its(:match_creation) { should eq 1403301139393 }
		its(:match_duration) { should eq 2615 }
		its(:match_id) { should eq 1535572376 }
		its(:match_version) { should eq "4.10.0.379" }
		its(:participant_identities) { should_not be_empty}
		its(:participants) { should_not be_empty }
		its(:queue_type) { should eq "RANKED_SOLO_5x5" }
		its(:region) { should eq "EUW" }
		its(:season) { should eq "SEASON4" }
		its(:teams) { should_not be_empty }
		its(:timeline) { should be_kind_of(LolApi::MatchTimeline) }
	end

	describe "teams" do
		subject(:team) { @match.teams.first}

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
	
	describe "match timeline" do
		subject(:timeline) { @match.timeline }

		it { should respond_to(:frameInterval)}
		it {should respond_to(:frames) }

		describe "should return" do
			its(:frameInterval) { should eq 60000 }
			its(:frames) { should_not be_empty }
		end

		describe "frame" do
			subject(:frame) { timeline.frames.first }

			it { should respond_to(:events) }
			it { should respond_to(:participantFrames) }
			it { should respond_to(:timestamp) }

			describe "should return" do
				its(:events) { should_not be_empty }
				its(:participantFrames) { should_not be_empty }
				its(:timestamp) { should eq 0 }
			end

			describe "event" do
				subject(:event) { frame.events.first }

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
					its(:assisting_participant_ids)  {should eq }
					its(:building_type) {should eq }
					its(:creator_id) {should eq }
					its(:event_type) {should eq }
					its(:item_after) {should eq }
					its(:item_before) {should eq }
					its(:item_id) {should eq }
					its(:killer_id) {should eq }
					its(:lane_type) {should eq }
					its(:level_up_type) {should eq }
					its(:monster_type) {should eq }
					its(:participant_id) {should eq }
					its(:position) {should eq }
					its(:skill_slot) {should eq }
					its(:team_id) {should eq }
					its(:timestamp) {should eq 7736 }
					its(:tower_type) {should eq }
					its(:victim_id) {should eq }
					its(:ward_type) {should eq }
				end
			end
		end
	end

	describe "participant identites" do
		subject { @match.participant_identities.first  }

		describe "should respond to" do
			it { should respond_to(:participant_id) }
			it { should respond_to(:player) }
		end

		describe "must return" do
			its(:participant_id) { should eq 0 }
			its(:player) { should be_kind_of(LolApi::Player) }
		end

		describe "participant player" do
			subject { @match.participant_identities[0].player }

			describe "should respond to" do
				it { should respond_to(:match_history_uri) }
				it { should respond_to(:profile_icon) }
				it { should respond_to(:summoner_name) }
			end

			describe "must return" do
				its(:match_history_uri) { should eq "/v1/stats/player_history/EUW1/338263" }
				its(:profile_icon) { should eq 28}
				its(:summoner_name) { should eq "furryballs" }
			end
		end
	end

	describe "participant" do
		subject(:participant) { @match.participants.first }

		it { should respond_to(:champion_id) }
		it { should respond_to(:participant_id) }
		it { should respond_to(:spell_1) }
		it { should respond_to(:spell_2) }
		it { should respond_to(:stats) }
		it { should respond_to(:team_id) }
		it { should respond_to(:timeline) }

		describe "should return" do
			its(:champion_id) { should eq 222 }
			its(:participant_id) { should eq 0 }
			its(:spell_1) { should eq 7 }
			its(:spell_2) { should eq 4 }
			its(:stats) { should be_kind_of(LolApi::ParticipantStats) }
			its(:team_id) { should eq 200 }
			its(:timeline) { should be_kind_of(LolApi::Timeline) }
		end

		describe "stats" do
			subject { participant.stats  }

			it { should respond_to(:assists) }
			it { should respond_to(:champ_level) }
			it { should respond_to(:combat_player_score) }
			it { should respond_to(:deaths) }
			it { should respond_to(:double_kills) }
			it { should respond_to(:first_blood_assist) }
			it { should respond_to(:first_blood_kill) }
			it { should respond_to(:first_inhibitor_assist) }
			it { should respond_to(:first_inhibitor_kill) }
			it { should respond_to(:first_tower_assist) }
			it { should respond_to(:first_tower_kill) }
			it { should respond_to(:gold_earned) }
			it { should respond_to(:gold_spent) }
			it { should respond_to(:inhibitor_kills) }
			it { should respond_to(:inventory) }
			it { should respond_to(:killing_sprees) }
			it { should respond_to(:kills) }
			it { should respond_to(:largest_crit) }
			it { should respond_to(:largest_killing_spree) }
			it { should respond_to(:largest_multi_kill) }
			it { should respond_to(:magic_damage_dealt) }
			it { should respond_to(:magic_damage_dealt_to_chanpions) }
			it { should respond_to(:magic_damage_taken) }
			it { should respond_to(:minions_killed) }
			it { should respond_to(:neutral_minions_killed) }
			it { should respond_to(:netural_minions_killed_enemy_jungle) }
			it { should respond_to(:netural_minions_killed_team_jungle) }
			it { should respond_to(:node_capture) }
			it { should respond_to(:node_capture_assist) }
			it { should respond_to(:node_neutralize) }
			it { should respond_to(:objective_player_score) }
			it { should respond_to(:penta_kills) }
			it { should respond_to(:physical_damage_dealt) }
			it { should respond_to(:physical_damage_dealt_to_champions) }
			it { should respond_to(:physical_damage_taken) }
			it { should respond_to(:quadra_kills) }
			it { should respond_to(:sight_wards_bought) }
			it { should respond_to(:team_objective) }
			it { should respond_to(:total_damage_dealt) }
			it { should respond_to(:total_damage_dealt_to_champions) }
			it { should respond_to(:total_damage_taken) }
			it { should respond_to(:total_heal) }
			it { should respond_to(:total_player_score) }
			it { should respond_to(:total_score_rank) }
			it { should respond_to(:total_time_crowd_control_dealt) }
			it { should respond_to(:total_units_healed) }
			it { should respond_to(:tower_kills) }
			it { should respond_to(:triple_kills) }
			it { should respond_to(:true_damage_dealt) }
			it { should respond_to(:true_damage_dealt_to_champions) }
			it { should respond_to(:true_damage_taken) }
			it { should respond_to(:unreal_kills) }
			it { should respond_to(:vision_wards_bought) }
			it { should respond_to(:wards_killed) }
			it { should respond_to(:wards_placed) }
			it { should respond_to(:winner) }

			describe "should return " do
				its(:assists) { should eq 6 }
				its(:champ_level) { should eq 18 }
				its(:combat_player_score) { should eq 0 }
				its(:deaths)  { should eq 6 }
				its(:double_kills) { should eq 0 }
				its(:first_blood_assist) { should eq false }
				its(:first_blood_kill) { should eq false }
				its(:first_inhibitor_assist) { should eq true }
				its(:first_inhibitor_kill) { should eq false }
				its(:first_tower_assist) { should eq false }
				its(:first_tower_kill) { should eq false }
				its(:gold_earned) { should eq 14833 }
				its(:gold_spent) { should eq 14005 }
				its(:inhibitor_kills) { should eq 0 }
				its(:inventory) { should be_kind_of(LolApi::Inventory) }
				its(:killing_sprees) { should eq 1 }
				its(:kills) { should eq 6 }
				its(:largest_crit) { should eq 579 }
				its(:largest_killing_spree) { should eq 4 }
				its(:largest_multi_kill) { should eq 1 }
				its(:magic_damage_dealt) { should eq 931 }
				its(:magic_damage_dealt_to_chanpions) { should eq 851 }
				its(:magic_damage_taken) { should eq 5948 }
				its(:minions_killed) { should eq 224 }
				its(:neutral_minions_killed) { should eq 29 }
				its(:netural_minions_killed_enemy_jungle) { should eq 8 }
				its(:netural_minions_killed_team_jungle) { should eq 21 }
				its(:node_capture) { should eq 0}
				its(:node_capture_assist) { should eq 0 }
				its(:node_neutralize) { should eq 0 }
				its(:objective_player_score) { should eq 0 }
				its(:penta_kills) { should eq 0 }
				its(:physical_damage_dealt) { should eq 182899 }
				its(:physical_damage_dealt_to_champions) { should eq 24291 }
				its(:physical_damage_taken) { should eq 15602 }
				its(:quadra_kills) { should eq 0 }
				its(:sight_wards_bought) { should eq 0 }
				its(:team_objective)  { should eq 0 }
				its(:total_damage_dealt) { should eq 184345}
				its(:total_damage_dealt_to_champions) { should eq 25153 }
				its(:total_damage_taken) { should eq 22233 }
				its(:total_heal) { should eq 2676 }
				its(:total_player_score) { should eq 0 }
				its(:total_score_rank) { should eq 0 }
				its(:total_time_crowd_control_dealt)  { should eq 184 }
				its(:total_units_healed) { should eq 2 }
				its(:tower_kills) { should eq 0 }
				its(:triple_kills) { should eq 0 }
				its(:true_damage_dealt) { should eq 514 }
				its(:true_damage_dealt_to_champions) { should eq 10 }
				its(:true_damage_taken) { should eq 682 }
				its(:unreal_kills) { should eq 0 }
				its(:vision_wards_bought) { should eq 0 }
				its(:wards_killed) { should eq 2 }
				its(:wards_placed) { should eq 1 }
				its(:winner) { should eq false }
			end

		end

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
	end
end
