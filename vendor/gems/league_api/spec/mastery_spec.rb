require 'spec_helper'

describe LolApi::Mastery do
	before do
		@mastery = FactoryGirl.build(:mastery) 
	end
	subject { @mastery }	

	it { should be_kind_of(LolApi::Mastery) }
	it { should respond_to(:description) }
	it { should respond_to(:id) }
	it { should respond_to(:image) }
	it { should respond_to(:name) }
	it { should respond_to(:prereq) }
	it { should respond_to(:ranks) }
	it { should respond_to(:sanitized_description) }

	describe "should return" do
		its(:description) { should include("+2% Cooldown Reduction and reduces the cooldown of Activated Items by 4%") }
		its(:id) { should eq 4353 }
		its(:image) { should be_kind_of(LolApi::Image) }
		its(:name) { should eq "Intelligence" }
		its(:prereq) { should eq 0 }
		its(:ranks) { should eq 3 }
		its(:sanitized_description) { should include("+2% Cooldown Reduction and reduces the cooldown of Activated Items by 4%")}
	end
end