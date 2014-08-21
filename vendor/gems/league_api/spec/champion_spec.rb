require 'spec_helper'

describe LolApi::Champion do
	before do
		@champion = FactoryGirl.build(:champion) 
	end
	subject { @champion }	

	it { should be_kind_of(LolApi::Champion)}
	it { should respond_to(:id) }
	it { should respond_to(:name)  }
	it { should respond_to(:title)  }
	it { should respond_to(:stats)  }
	it { should respond_to(:key) }
	it { should respond_to(:ally_tips) }
	it { should respond_to(:enemy_tips)  }
	it { should respond_to(:blurb) }
	it { should respond_to(:image) }
	it { should respond_to(:info) }
	it { should respond_to(:lore) }
	it { should respond_to(:par_type) }
	it { should respond_to(:passive) }
	it { should respond_to(:recommended) }
	it { should respond_to(:skins) }
	it { should respond_to(:spells) }
	it { should respond_to(:stats) }
	it { should respond_to(:tags) }

	describe "must return" do
		its(:id) { should eq 35}
		its(:name) { should eq "Shaco" }
		its(:title) {should eq "the Demon Jester"}
		its(:key) { should eq "Shaco" }
		its(:ally_tips) { should_not be_empty }
		its(:enemy_tips) { should_not be_empty }
		its(:blurb) { should include("Most would say that death isn't funny.") }
		its(:image) { should be_kind_of(LolApi::Image) }
		its(:info) { should be_kind_of(LolApi::Info) }
		its(:lore) { should include("It isn't, unless you're Shaco - then it's hysterical.")}
		its(:par_type) { should eq "Mana" }
		its(:passive) { should be_kind_of(LolApi::Passive) }
		its(:recommended) { should_not be_empty }
		its(:skins) { should_not be_empty }
		its(:spells) { should_not be_empty } 
		its(:stats) { should_not be_empty }
		its(:tags) { should include("Assassin")}
	end
end