require 'spec_helper'

describe "champion" do
	let(:champion) { FactoryGirl.build(:champion)}
	subject { :champion }
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
	it { should respond_to(:partype) }
	it { should respond_to(:passive) }
	it { should respond_to(:recommended) }
	it { should respond_to(:skins) }
	it { should respond_to(:spells) }
	it { should respond_to(:stats) }
	it { should respond_to(:tags) }
end