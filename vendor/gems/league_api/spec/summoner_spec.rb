require 'spec_helper'

describe "A summoners" do
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

	describe "masteries" do
		
		before do
			@masteries = FactoryGirl.build(:summoner_masteries)
		end

		subject { @masteries }

		it { should be_kind_of(LolApi::SummonerMasteries)}
		it { should respond_to(:pages) }
		it { should respond_to(:summoner_id) }

		describe "should return" do
			its(:pages) { should_not be_empty }
			its(:summoner_id) { should eq 332541 }
		end

		describe "page" do
			
			subject(:page) { @masteries.pages.first }

			it { should be_kind_of(LolApi::MasteryPage) }
			it { should respond_to(:current) }
			it { should respond_to(:id) }
			it { should respond_to(:masteries) }
			it { should respond_to(:name) }

			describe "should return" do
				its(:current) { should eq false }
				its(:id) { should eq 43675928 }
				its(:masteries) { should_not be_empty }
				its(:name) { should eq "AP Carry" }
			end

			describe "mastery" do
				subject { page.masteries.first } 

				it { should be_kind_of(LolApi::MasteryItem) }
				it { should respond_to(:id) }
				it { should respond_to(:rank) }

				describe "should return" do
					its(:id) { should eq 4212 }
					its(:rank) { should eq 2 }
				end
			end
		end

	end

	describe "rune" do
		before do
			@runes = FactoryGirl.build(:summoner_runes)
		end

		subject { @runes }

		it { should be_kind_of(LolApi::SummonerRunes) }
		it { should respond_to(:pages) }
		it { should respond_to(:summoner_id) }

		describe "should return" do
			its(:pages) { should_not be_empty }
			its(:summoner_id) { should eq 332541 }
		end

		describe "pages" do
			subject(:page) { @runes.pages.first }

			it { should be_kind_of(LolApi::RunePage) }
			it { should respond_to(:current) }
			it { should respond_to(:id) }
			it { should respond_to(:name) }
			it { should respond_to(:runes) }

			describe "should return" do
				its(:current) { should eq true }
				its(:id) { should eq 14741205 }
				its(:name) { should eq "AD Carry" }
				its(:runes) { should_not be_empty }
			end

			describe "slotted" do
				subject { page.runes.first }

				it { should be_kind_of(LolApi::SlottedRune) }
				it { should respond_to(:id) }
				it { should respond_to(:slot_id) }

				describe "should return" do
					its(:id) { should eq 5246 }
					its(:slot_id) { should eq 1 } 
				end
			end
		end
	end
end