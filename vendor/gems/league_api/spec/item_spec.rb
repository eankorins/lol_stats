require 'spec_helper'

describe LolApi::Item do
	before do
		@item = FactoryGirl.build(:item) 
	end
	subject { @item }	

	it { should be_kind_of(LolApi::Item) }
	it { should respond_to(:colloq) }
	it { should respond_to(:consume_on_full) }
	it { should respond_to(:consumed) }
	it { should respond_to(:depth) }
	it { should respond_to(:description) }
	it { should respond_to(:from) }
	it { should respond_to(:gold) }
	it { should respond_to(:group) }
	it { should respond_to(:hide_from_all) }
	it { should respond_to(:id) }
	it { should respond_to(:image) }
	it { should respond_to(:in_store) }
	it { should respond_to(:into) }
	it { should respond_to(:maps) }
	it { should respond_to(:name) }
	it { should respond_to(:plain_text) }
	it { should respond_to(:required_champion) }
	it { should respond_to(:rune) }
	it { should respond_to(:sanitized_description) }
	it { should respond_to(:special_recipe) }
	it { should respond_to(:stacks) }
	it { should respond_to(:stats) }
	it { should respond_to(:tags) }

	describe "should return" do
		its(:colloq) { should eq "spooky ghosts" }
		its(:consume_on_full) { should eq false }
		its(:consumed) { should eq false }
		its(:depth) { should eq 3 }
		its(:description) { should include("<stats>+80 Ability Power<br>+10%") }
		its(:from) { should include("3108") }
		its(:gold) { should be_kind_of(LolApi::Gold)}
		its(:group) { should eq "item" }
		its(:hide_from_all) { should eq false }
		its(:id) { should eq 3290 }
		its(:image) { should be_kind_of(LolApi::Image) }
		its(:in_store) { should eq false }
		its(:into) { should include("3046") }
		its(:maps) { should have_key("1") }
		its(:name) { should eq "Twin Shadows" }
		its(:plain_text) { should include("Summon wraiths to slow and") }
		its(:required_champion) { should eq "Rengar" }
		its(:rune) { should have_key("isRune") }
		its(:sanitized_description) { should include("+80 Ability Power +10% Cooldown Reduction") }
		its(:special_recipe) { should eq 3169 }
		its(:stacks) { should eq 3 }
		its(:stats) { should have_key("FlatMagicDamageMod") }
		its(:tags) { should include("SpellDamage") }
	end
end