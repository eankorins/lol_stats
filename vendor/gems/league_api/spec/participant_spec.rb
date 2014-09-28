require 'spec_helper'

describe LolApi::Participant do

	before do
		@match = FactoryGirl.build(:match)
	end
	subject(:participant) { @match.participants.first }

	it { should be_kind_of(LolApi::Participant)}
	it { should respond_to(:champion_id) }
	it { should respond_to(:masteries) }
	it { should respond_to(:participant_id) }
	it { should respond_to(:runes) }
	it { should respond_to(:spell_1) }
	it { should respond_to(:spell_2) }
	it { should respond_to(:stats) }
	it { should respond_to(:team_id) }
	it { should respond_to(:timeline) }

	describe "should return" do
		its(:champion_id) { should eq 157 }
		its(:masteries) { should eq nil }
		its(:participant_id) { should eq 1 }
		its(:runes) { should eq nil }
		its(:spell_1) { should eq 12 }
		its(:spell_2) { should eq 4 }
		its(:stats) { should be_kind_of(LolApi::ParticipantStats) }
		its(:team_id) { should eq 100 }
		its(:timeline) { should be_kind_of(LolApi::ParticipantTimeline) }
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
			its(:assists) { should eq 9 }
			its(:champ_level) { should eq 18 }
			its(:combat_player_score) { should eq 0 }
			its(:deaths)  { should eq 8 }
			its(:double_kills) { should eq 1 }
			its(:first_blood_assist) { should eq false }
			its(:first_blood_kill) { should eq false }
			its(:first_inhibitor_assist) { should eq false }
			its(:first_inhibitor_kill) { should eq false }
			its(:first_tower_assist) { should eq false }
			its(:first_tower_kill) { should eq true }
			its(:gold_earned) { should eq 14856 }
			its(:gold_spent) { should eq 15065 }
			its(:inhibitor_kills) { should eq 0 }
			its(:inventory) { should be_kind_of(LolApi::Inventory) }
			its(:killing_sprees) { should eq 1 }
			its(:kills) { should eq 3 }
			its(:largest_crit) { should eq 710 }
			its(:largest_killing_spree) { should eq 2 }
			its(:largest_multi_kill) { should eq 2 }
			its(:magic_damage_dealt) { should eq 50388 }
			its(:magic_damage_dealt_to_chanpions) { should eq 2234 }
			its(:magic_damage_taken) { should eq 10892 }
			its(:minions_killed) { should eq 256 }
			its(:neutral_minions_killed) { should eq 42 }
			its(:netural_minions_killed_enemy_jungle) { should eq 15 }
			its(:netural_minions_killed_team_jungle) { should eq 27 }
			its(:node_capture) { should eq 0}
			its(:node_capture_assist) { should eq 0 }
			its(:node_neutralize) { should eq 0 }
			its(:objective_player_score) { should eq 0 }
			its(:penta_kills) { should eq 0 }
			its(:physical_damage_dealt) { should eq 196614 }
			its(:physical_damage_dealt_to_champions) { should eq 11763 }
			its(:physical_damage_taken) { should eq 15730 }
			its(:quadra_kills) { should eq 0 }
			its(:sight_wards_bought) { should eq 2 }
			its(:team_objective)  { should eq 0 }
			its(:total_damage_dealt) { should eq 247073}
			its(:total_damage_dealt_to_champions) { should eq 14068 }
			its(:total_damage_taken) { should eq 27775 }
			its(:total_heal) { should eq 1094 }
			its(:total_player_score) { should eq 0 }
			its(:total_score_rank) { should eq 0 }
			its(:total_time_crowd_control_dealt)  { should eq 151 }
			its(:total_units_healed) { should eq 1 }
			its(:tower_kills) { should eq 1 }
			its(:triple_kills) { should eq 0 }
			its(:true_damage_dealt) { should eq 70 }
			its(:true_damage_dealt_to_champions) { should eq 70 }
			its(:true_damage_taken) { should eq 1152 }
			its(:unreal_kills) { should eq 0 }
			its(:vision_wards_bought) { should eq 0 }
			its(:wards_killed) { should eq 0 }
			its(:wards_placed) { should eq 22 }
			its(:winner) { should eq true }
		end

	end
end