require 'spec_helper'

describe LolApi::HistoryMatch do
	before do
		@match = FactoryGirl.build(:match)
	end
	subject { @match }

	it { should be_kind_of(LolApi::Match)}
	it { should respond_to(:map_id) }
	it { should respond_to(:match_creation)  }
	it { should respond_to(:match_duration)  }
	it { should respond_to(:match_type) }
	it { should respond_to(:match_mode) }
	it { should respond_to(:match_id) }
	it { should respond_to(:match_version) }
	it { should respond_to(:participant_identities) }
	it { should respond_to(:participants)  }
	it { should respond_to(:queue_type) }
	it { should respond_to(:region) }
	it { should respond_to(:season) }
	it { should respond_to(:teams) }
	it { should respond_to(:timeline) }

	describe "should return" do
		its(:map_id) { should eq 1 }
		its(:match_creation) { should eq 1403301139393 }
		its(:match_duration) { should eq 2615 }
		its(:match_type){ should eq "MATCHED_GAME" }
		its(:match_mode){ should eq "CLASSIC" }
		its(:match_id) { should eq 1535572376 }
		its(:match_version) { should eq "4.10.0.379" }
		its(:participant_identities) { should_not be_empty}
		its(:participants) { should_not be_empty }
		its(:queue_type) { should eq "RANKED_SOLO_5x5" }
		its(:region) { should eq "EUW" }
		its(:season) { should eq "SEASON2014" }
		its(:teams) { should_not be_empty }
		its(:timeline) { should be_kind_of(LolApi::Timeline) }
	end
	describe "participant identites" do
		subject { @match.participant_identities.first  }

		describe "should respond to" do
			it { should respond_to(:participant_id) }
			it { should respond_to(:player) }
		end

		describe "must return" do
			its(:participant_id) { should eq 1 }
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
				its(:match_history_uri) { should eq "/v1/stats/player_history/EUW1/25448172" }
				its(:profile_icon) { should eq 588}
				its(:summoner_name) { should eq "alexroswel" }
			end
		end
	end


end
